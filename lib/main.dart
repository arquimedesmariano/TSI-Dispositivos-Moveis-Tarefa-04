import 'package:flutter/material.dart';

void main() {
  runApp(const NavegaFlutterApp());
}

// ============================================================
// APLICAÇÃO PRINCIPAL
// ============================================================

class NavegaFlutterApp extends StatelessWidget {
  const NavegaFlutterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navega Flutter',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
        ),
        useMaterial3: true,
      ),

      home: const TelaInicial(),
    );
  }
}

// ============================================================
// TELA 1 - INICIAL
// ============================================================

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navega Flutter'),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [

              const Text(
                'Aplicação Mobile',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'Navegação e animações em Flutter',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),

              // ==================================================
              // CARD INTERATIVO
              // TELA 1 -> TELA 4
              // ==================================================

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const TelaQuarta(),
                    ),
                  );
                },

                child: Hero(
                  tag: 'card-principal',

                  child: Container(
                    height: 220,
                    width: double.infinity,

                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(25),
                    ),

                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [

                        Icon(
                          Icons.touch_app,
                          size: 60,
                          color: Colors.white,
                        ),

                        SizedBox(height: 15),

                        Text(
                          'CARD INTERATIVO',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),

                        SizedBox(height: 8),

                        Text(
                          'Toque para abrir a TELA 4',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // ==================================================
              // BOTÃO TELA 2
              // ==================================================

              SizedBox(
                width: double.infinity,

                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TelaSegunda(),
                      ),
                    );
                  },

                  icon: const Icon(Icons.looks_two),

                  label: const Text(
                    'ABRIR TELA 2',
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // ==================================================
              // BOTÃO TELA 3
              // ==================================================

              SizedBox(
                width: double.infinity,

                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TelaTerceira(),
                      ),
                    );
                  },

                  icon: const Icon(Icons.looks_3),

                  label: const Text(
                    'ABRIR TELA 3',
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // ==================================================
              // BOTÃO TELA 4
              // ==================================================

              SizedBox(
                width: double.infinity,

                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TelaQuarta(),
                      ),
                    );
                  },

                  icon: const Icon(Icons.looks_4),

                  label: const Text(
                    'ABRIR TELA 4',
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

// ============================================================
// TELA 2
// ============================================================

class TelaSegunda extends StatelessWidget {
  const TelaSegunda({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeAnimatedPage(
      child: Scaffold(

        appBar: AppBar(
          title: const Text('Tela 2'),
        ),

        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                const Icon(
                  Icons.looks_two,
                  size: 80,
                ),

                const SizedBox(height: 20),

                const Text(
                  'SEGUNDA TELA',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 15),

                const Text(
                  'Esta é a segunda tela da aplicação.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),

                const SizedBox(height: 30),

                // IR PARA TELA 3

                SizedBox(
                  width: double.infinity,

                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TelaTerceira(),
                        ),
                      );
                    },

                    child: const Text(
                      'IR PARA TELA 3',
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                // VOLTAR

                SizedBox(
                  width: double.infinity,

                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },

                    child: const Text(
                      'VOLTAR PARA TELA 1',
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ============================================================
// TELA 3
// ============================================================

class TelaTerceira extends StatelessWidget {
  const TelaTerceira({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeAnimatedPage(
      child: Scaffold(

        appBar: AppBar(
          title: const Text('Tela 3'),
        ),

        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                const Icon(
                  Icons.looks_3,
                  size: 80,
                ),

                const SizedBox(height: 20),

                const Text(
                  'TERCEIRA TELA',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 15),

                const Text(
                  'Esta é a terceira tela da aplicação.\n\n'
                      'Esta tela utiliza AnimatedOpacity '
                      'para criar o efeito de fade.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),

                const SizedBox(height: 30),

                // VOLTAR PARA TELA 2

                SizedBox(
                  width: double.infinity,

                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },

                    child: const Text(
                      'VOLTAR PARA TELA 2',
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // VOLTAR PARA TELA 1

                SizedBox(
                  width: double.infinity,

                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.popUntil(
                        context,
                            (route) => route.isFirst,
                      );
                    },

                    child: const Text(
                      'VOLTAR PARA TELA 1',
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ============================================================
// TELA 4 - CARD EXPANDIDO
// ============================================================

class TelaQuarta extends StatelessWidget {
  const TelaQuarta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Tela 4'),
      ),

      body: Center(
        child: Hero(
          tag: 'card-principal',

          child: Container(
            margin: const EdgeInsets.all(20),

            width: double.infinity,
            height: 450,

            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(30),
            ),

            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

                Icon(
                  Icons.touch_app,
                  size: 90,
                  color: Colors.white,
                ),

                SizedBox(height: 25),

                Text(
                  'QUARTA TELA',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 15),

                Text(
                  'CARD EXPANDIDO',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 20),

                Padding(
                  padding: EdgeInsets.all(25),

                  child: Text(
                    'O card da Tela 1 foi expandido '
                        'utilizando Hero Animation.',
                    textAlign: TextAlign.center,

                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ============================================================
// COMPONENTE DE FADE
// ============================================================

class FadeAnimatedPage extends StatefulWidget {

  final Widget child;

  const FadeAnimatedPage({
    super.key,
    required this.child,
  });

  @override
  State<FadeAnimatedPage> createState() =>
      _FadeAnimatedPageState();
}

// ============================================================
// CONTROLE DA ANIMAÇÃO
// ============================================================

class _FadeAnimatedPageState
    extends State<FadeAnimatedPage> {

  double opacity = 0.0;

  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(milliseconds: 100),
          () {

        if (mounted) {
          setState(() {
            opacity = 1.0;
          });
        }

      },
    );
  }

  @override
  Widget build(BuildContext context) {

    return AnimatedOpacity(
      opacity: opacity,

      duration: const Duration(
        milliseconds: 500,
      ),

      child: widget.child,
    );
  }
}