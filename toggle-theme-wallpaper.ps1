# === CONFIGURATION ===
$darkWallpaperPath  = "C:\Users\rafae\OneDrive\Imagens\Wallpapers\Windows 11\windows 11 (3).png"
$lightWallpaperPath = "C:\Users\rafae\OneDrive\Imagens\Wallpapers\Windows 11\Windows 11 (2).png"

# === THEME TOGGLE + WALLPAPER ===

Add-Type -Namespace ThemeTools -Name NativeMethods -MemberDefinition @"
    [DllImport("user32.dll", SetLastError = true)]
    public static extern IntPtr SendMessageTimeout(
        IntPtr hWnd, uint Msg, UIntPtr wParam, string lParam,
        uint fuFlags, uint uTimeout, out UIntPtr lpdwResult);

    [DllImport("user32.dll", SetLastError = true)]
    public static extern bool SystemParametersInfo(
        int uAction, int uParam, string lpvParam, int fuWinIni);
"@

$SPI_SETDESKWALLPAPER = 0x0014
$SPIF_UPDATEINIFILE   = 0x01
$SPIF_SENDCHANGE      = 0x02

$reg = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize"
$val = Get-ItemProperty -Path $reg -Name AppsUseLightTheme -ErrorAction SilentlyContinue | Select-Object -ExpandProperty AppsUseLightTheme -ErrorAction SilentlyContinue
$val = if ($val -eq 1) { 0 } else { 1 }

Set-ItemProperty -Path $reg -Name AppsUseLightTheme -Value $val
Set-ItemProperty -Path $reg -Name SystemUsesLightTheme -Value $val

# Broadcast theme change
[UIntPtr]$result = [UIntPtr]::Zero
[ThemeTools.NativeMethods]::SendMessageTimeout(
    [IntPtr]0xffff, 0x001A, [UIntPtr]::Zero, "ImmersiveColorSet", 0x0002, 100, [ref]$result
) | Out-Null

# Set wallpaper if path is valid
$wallpaper = if ($val -eq 1) { $lightWallpaperPath } else { $darkWallpaperPath }
if (Test-Path $wallpaper) {
    [ThemeTools.NativeMethods]::SystemParametersInfo(
        $SPI_SETDESKWALLPAPER, 0, $wallpaper, $SPIF_UPDATEINIFILE -bor $SPIF_SENDCHANGE
    ) | Out-Null
}
