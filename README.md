# YASB – Minhas Configurações

Este repositório reúne as configurações que utilizo no projeto [YASB](https://github.com/amnweb/yasb), originalmente desenvolvido por [AmNweb](https://github.com/amnweb).

O objetivo é facilitar a replicação do meu ambiente e servir como referência para quem deseja personalizar o YASB de forma semelhante.

---

## 📁 Arquivos necessários

Para que o YASB funcione corretamente com este setup, é obrigatório utilizar os três arquivos abaixo:

- [config.yaml](https://github.com/winchestercanal/Yasb/blob/main/config.yaml)
- [styles.css](https://github.com/winchestercanal/Yasb/blob/main/styles.css)
- [toggle-theme-wallpaper.ps1](https://github.com/winchestercanal/Yasb/blob/main/toggle-theme-wallpaper.ps1)

Ambos devem ser colocados no seguinte diretório:

```plaintext
%USERPROFILE%\.config\yasb
```

## 📁 Arquivo opcional

Caso queira, você tambem pode usar um arquivo de variáveis de ambiente para isolar dados sensiveis como APIs de clima, endereços, IPs, etc.  Não é obrigatório, mas é recomendado caso tenha interesse em compartilhar suas configurações como estou fazendo nesse repositório.

- [.env](https://github.com/winchestercanal/Yasb/blob/main/.env)

Coloque-o junto dos outros arquivos de configuração 

---

## 🔄 Mantenha o YASB atualizado

Recomendo executar o comando abaixo periodicamente para garantir que o YASB esteja na versão mais recente:
```bash
yasbc update
```

---

## 🎥 Tutorial completo

Para entender como tudo funciona na prática, assista ao tutorial:

**[▶️ Assistir no YouTube](https://youtu.be/rddIT4NQvso)**

---

## 🌗 Widget `toggle_theme`

O widget `toggle_theme` depende de um script externo para realizar a troca de tema e wallpaper automaticamente.

Para que o script possa ser executado no Windows, é necessário habilitar a política de execução do PowerShell.

Abra o **PowerShell como Administrador** e execute:
```powershell
Set-ExecutionPolicy RemoteSigned
```

Confirme com `Y` quando solicitado.

> ⚠️ Essa configuração permite a execução de scripts locais confiáveis no seu sistema.

---

## 🔗 Outros repositórios que você pode gostar

- 🪟 [Configurações do Komorebi](https://github.com/winchestercanal/komorebi-configs)
- 💾 [Script de Backup e Restauração de Drivers](https://github.com/winchestercanal/driverbackup)

---

Se este repositório te ajudou, considere deixar uma ⭐ no GitHub!
