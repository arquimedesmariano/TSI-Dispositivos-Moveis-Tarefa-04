Tarefa 04 — Navega Flutter
Aplicativo mobile desenvolvido em Flutter como atividade acadêmica de navegação e animações.
Objetivo
Desenvolver uma aplicação Flutter com quatro telas, navegação entre telas e animações de transição, incluindo efeito de fade e expansão de um card.
Funcionalidades
- Quatro telas independentes.
- Navegação entre as telas utilizando Navigator.push() e Navigator.pop().
- Efeito de fade utilizando AnimatedOpacity.
- Expansão do card utilizando Hero Animation.
- Card interativo na tela inicial.
- Botões para acesso às telas 2, 3 e 4.
- Teste da aplicação realizado em ambiente Android.
Estrutura das telas
Tela 1 — Inicial
Apresenta:
- Título da aplicação.
- Card interativo.
- Botão para abrir a Tela 2.
- Botão para abrir a Tela 3.
- Botão para abrir a Tela 4.
O card utiliza Hero Animation para realizar a transição para a Tela 4.
Tela 2 — Segunda Tela
Apresenta informações da segunda tela e possui:
- Botão para abrir a Tela 3.
- Botão para retornar à Tela 1.
- Efeito de fade com AnimatedOpacity.
Tela 3 — Terceira Tela
Apresenta informações da terceira tela e possui:
- Botão para retornar à Tela 2.
- Botão para retornar diretamente à Tela 1.
- Efeito de fade com AnimatedOpacity.
Tela 4 — Card Expandido
Apresenta o card expandido e utiliza Hero Animation para manter a relação visual com o card da Tela 1.
Tecnologias utilizadas
- Flutter
- Dart
- Android Studio
- Material Design
- Navigator
- AnimatedOpacity
- Hero Animation
- Git e GitHub
Estrutura principal do projeto
navega_flutter/
├── android/
├── build/
├── lib/
│   └── main.dart
├── test/
├── pubspec.yaml
└── README.md
Como executar o projeto
Abra o projeto no Android Studio e execute:
flutter pub get
Depois conecte um dispositivo Android ou inicie um emulador e execute:
flutter run
Gerar o APK
Para gerar a versão de release:
flutter build apk --release
O APK será gerado em:
build/app/outputs/flutter-apk/app-release.apk
No Windows, considerando a pasta do projeto:
D:\Dados\AndroidStudioProjects
avega_flutteruildpp\outputslutter-apkpp-release.apk
Testes realizados
A aplicação foi testada verificando:
- Acesso à Tela 2.
- Acesso à Tela 3.
- Acesso à Tela 4.
- Navegação de retorno.
- Funcionamento do card interativo.
- Funcionamento das transições.
- Geração do APK.
- Instalação e execução do APK em ambiente Android.
GitHub
O projeto está organizado em um repositório chamado:
Tarefa-04
Entrega
O arquivo principal para entrega da atividade é:
app-release.apk
O projeto-fonte também deve permanecer versionado no repositório GitHub.
Checklist
- [x] Projeto criado no Android Studio
- [x] Quatro telas implementadas
- [x] Navegação implementada
- [x] AnimatedOpacity implementado
- [x] Hero Animation implementado
- [x] Aplicação testada
- [x] APK gerado
- [x] APK testado em Android
- [x] Projeto versionado com Git
- [x] Repositório Tarefa-04 criado
