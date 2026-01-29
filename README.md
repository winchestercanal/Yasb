# YASB – Minhas Configurações

Este repositório reúne as configurações que utilizo no projeto [YASB](https://github.com/amnweb/yasb), originalmente desenvolvido por [AmNweb](https://github.com/amnweb).

O objetivo é facilitar a replicação do meu ambiente e servir como referência para quem deseja personalizar o YASB de forma semelhante.

---

## 📁 Arquivos necessários

Para que o YASB funcione corretamente com este setup, é obrigatório utilizar os dois arquivos abaixo:

- `config.yaml`
- `styles.css`

Ambos devem ser colocados no seguinte diretório:
```plaintext
C:\Users\SEU_USUÁRIO\.config\yasb
```

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

### 1️⃣ Baixe o script

Faça o download do script disponível aqui:

👉 [toggle-theme-wallpaper.ps1](https://github.com/winchestercanal/Yasb/blob/main/toggle-theme-wallpaper.ps1)

### 2️⃣ Configure o caminho no `.config`

Após baixar o script, informe o caminho dele corretamente dentro do seu arquivo de configuração do YASB.

### 3️⃣ Habilite a Execution Policy do PowerShell

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
