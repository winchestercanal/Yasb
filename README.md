<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=28&duration=99999999&pause=99999999&color=0078D7&center=true&vCenter=true&width=600&lines=Minhas+Configura%C3%A7%C3%B5es+do+YASB+%F0%9F%8E%A8" alt="Minhas Configurações do YASB 🎨" />

<br/>

[![Windows](https://img.shields.io/badge/Windows-0078D7?style=for-the-badge&logo=windows&logoColor=white)](https://www.microsoft.com/windows)
[![YASB](https://img.shields.io/badge/YASB-Status_Bar-4D4D4D?style=for-the-badge&logo=windowsterminal&logoColor=white)](https://github.com/amnweb/yasb)
[![YAML](https://img.shields.io/badge/Config-.yaml-CB171E?style=for-the-badge&logo=yaml&logoColor=white)]()
[![YouTube](https://img.shields.io/badge/Tutorial-YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://youtu.be/rddIT4NQvso)

<br/>

> **Configurações desenvolvidas pelo [Canal WINchester](https://www.youtube.com/WINchesterCanal)**  
> Setup completo do [YASB](https://github.com/amnweb/yasb) para replicar meu ambiente — ou usar como referência para o seu.

<br/>

[📁 Arquivos](#-arquivos-necessários) · [🧪 Showcase](#-showcase-de-widgets) · [🔄 Atualização](#-mantenha-o-yasb-atualizado) · [🌗 toggle_theme](#-widget-toggle_theme) · [🎥 Tutorial](#-tutorial)

</div>

---

## 📁 Arquivos Necessários

Para que o YASB funcione corretamente com este setup, são necessários **três arquivos**:

| Arquivo | Descrição |
|---------|-----------|
| [📄 config.yaml](https://github.com/winchestercanal/Yasb/blob/main/config.yaml) | Configuração principal dos widgets |
| [🎨 styles.css](https://github.com/winchestercanal/Yasb/blob/main/styles.css) | Estilização visual da barra |
| [⚙️ toggle-theme-wallpaper.ps1](https://github.com/winchestercanal/Yasb/blob/main/toggle-theme-wallpaper.ps1) | Script de troca de tema e wallpaper |

Todos devem ser colocados no seguinte diretório:

```
%USERPROFILE%\.config\yasb
```

---

## 🧪 Showcase de Widgets

Dentro da pasta [Showcase](https://github.com/winchestercanal/Yasb/tree/main/Showcase) existe um arquivo especial: [config.yaml](https://github.com/winchestercanal/Yasb/blob/main/Showcase/config.yaml)

> [!WARNING]
> **Este arquivo NÃO é um setup real, organizado ou otimizado.**  
> Não o utilize como base para sua configuração final.

O único objetivo dele é exibir **todos os widgets disponíveis ao mesmo tempo**, para que você possa:

- 👁️ Ver rapidamente como cada widget se comporta
- 🧪 Testá-los visualmente de uma só vez
- ✅ Decidir quais deseja manter no seu próprio setup

Funciona como uma **vitrine de widgets**. Após experimentar e encontrar os que mais combinam com o seu uso, insira-os no [config.yaml](https://github.com/winchestercanal/Yasb/blob/main/config.yaml) original.

---

## 📁 Arquivo Opcional

Caso queira isolar dados sensíveis como APIs de clima, endereços ou IPs, você pode usar um arquivo de variáveis de ambiente:

| Arquivo | Descrição |
|---------|-----------|
| [🔒 .env](https://github.com/winchestercanal/Yasb/blob/main/.env) | Variáveis de ambiente (opcional, mas recomendado) |

Coloque-o junto dos outros arquivos de configuração.

> [!TIP]
> Usar o `.env` é especialmente útil se você pretende compartilhar suas configurações publicamente, evitando expor dados pessoais no repositório.

---

## 🔄 Mantenha o YASB Atualizado

Execute o comando abaixo periodicamente para garantir que o YASB esteja na versão mais recente:

```bash
yasbc update
```

---

## 🌗 Widget `toggle_theme`

O widget `toggle_theme` depende de um script externo para realizar a troca de tema e wallpaper automaticamente. Como o script não possui assinatura digital, o Windows bloqueia sua execução por padrão.

Siga os passos abaixo para liberar o funcionamento:

**1️⃣ Habilitar Política de Execução**

Abra o **PowerShell como Administrador** e execute:

```powershell
Set-ExecutionPolicy RemoteSigned
```

Confirme com `Y` quando solicitado.

> [!NOTE]
> Mesmo com a política de execução habilitada, é necessário remover o bloqueio individual do arquivo baixado da internet.

**2️⃣ Desbloquear o Arquivo do Script**

Ainda no terminal, execute:

```powershell
# Entre na pasta de configurações do YASB
cd $env:USERPROFILE\.config\yasb

# Desbloqueie o script para execução
Unblock-File .\toggle-theme-wallpaper.ps1
```

---

## 🎥 Tutorial

<div align="center">

[![Tutorial WINchester](https://img.shields.io/badge/▶_Assistir_Tutorial_Completo-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://youtu.be/rddIT4NQvso)

</div>

---

## 🔗 Outros repositórios

<div align="center">

| Projeto | Descrição |
|---------|-----------|
| 🪟 [Komorebi Configs](https://github.com/winchestercanal/komorebi-configs) | Configurações do gerenciador de janelas Komorebi |
| 💾 [WINbackup](https://github.com/winchestercanal/WINbackup-Script) | Script de Backup e Restauração de arquivos e drivers no Windows |

</div>

---

<div align="center">

Se este repositório te ajudou, deixe uma ⭐ no GitHub!

[![Canal WINchester](https://img.shields.io/badge/Canal_WINchester-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://www.youtube.com/WINchesterCanal)

</div>
