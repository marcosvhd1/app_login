# app_login

## ✨ Sobre
O app representa uma autenticação completa com o Firebase, explorando as mais diversas opções que a ferramenta proporciona.
Para esse projeto utilizei o microframework GetX para controle de estado, gerenciamento de rotas e UI feedback.

## Features
- [x] Registrar usuáio no Firebase via email e telefone;
- [x] Login com senha e telefone;
- [x] Logout;
- [x] Consultar, salvar e editar dados de usuários no Cloud FireStore;

## Tecnologias utilizadas
- Flutter
- GetX
- Firebase Auth
- Cloud FireStore

## 🚀 Como usar
- Clone o projeto

```sh
git clone https://github.com/marcosvhd1/app_login.git
```

- Abra seu projeto, e rode o seguinte comando

```sh
flutter pub get
```

- Crie seu projeto no Firebase, e dê o nome que preferir;

- Instale o Firebase CLI na sua máquina, <a href="https://firebase.google.com/docs/cli">Documentação</a>

- Use o Firebase CLI para adicionar o Firebase em seu app, <a href="https://firebase.google.com/docs/flutter/setup?platform=android">Documentação</a>

- Na página de Autenticação no Firebase, adicione o método Email/Senha e Telefone

- Após isso, você irá baixar o arquivo firebase_options, que está disponível na configuração do seu projeto no Firebase, e colocar no app no caminho
``` lib -> src -> config -> firebase_options.dart```

- No seu terminal, rode o app
```sh
flutter run
```
