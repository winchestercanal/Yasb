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
---
🧪 Arquivo de demonstração (Showcase)

⚠️ ATENÇÃO IMPORTANTE

Dentro da pasta [Showcase](https://github.com/winchestercanal/Yasb/tree/main/Showcase) existe um outro arquivo chamado [config.yaml
](https://github.com/winchestercanal/Yasb/blob/main/Showcase/config.yaml)

Esse arquivo NÃO representa um setup real, organizado ou otimizado.

O único objetivo dele é exibir TODOS os widgets disponíveis ao mesmo tempo, para que você possa:

Ver rapidamente como cada widget se comporta

Testar visualmente todos eles

Decidir quais deseja manter no seu próprio setup

Ele funciona como uma vitrine de widgets.

❗ Não utilize esse arquivo como base para sua configuração final.

❗ Ele não foi feito para ser bonito, organizado ou funcional no dia a dia.

❗ Ele existe exclusivamente para fins de demonstração.

Após experimentar e encontrar os widgets mais uteis para o seu setup, anote seus nomes e os insira no arquivo [config.yaml](https://github.com/winchestercanal/Yasb/blob/main/config.yaml) original.

---

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

O widget `toggle_theme` depende de um script externo para realizar a troca de tema e wallpaper automaticamente. Como o script não possui assinatura digital, o Windows bloqueia sua execução por padrão. Siga os passos abaixo para liberar o funcionamento:

1. Habilitar Política de Execução

Abra o **PowerShell como Administrador** e execute:
```powershell
Set-ExecutionPolicy RemoteSigned
```

Confirme com `Y` quando solicitado.

2. Desbloquear o Arquivo do Script
Mesmo com a política habilitada, você precisa remover o bloqueio individual do arquivo que foi baixado da internet. Ainda no terminal (PowerShell), execute os comandos abaixo:

```powershell
# Entre na pasta de configurações do YASB
cd $env:USERPROFILE\.config\yasb

# Desbloqueie o script para execução
Unblock-File .\toggle-theme-wallpaper.ps1
```
Feito isso, o script deve funcionar!

---

## 🔗 Outros repositórios que você pode gostar

- 🪟 [Configurações do Komorebi](https://github.com/winchestercanal/komorebi-configs)
- 💾 [Script de Backup e Restauração de Drivers](https://github.com/winchestercanal/driverbackup)

---

Se este repositório te ajudou, considere deixar uma ⭐ no GitHub!
