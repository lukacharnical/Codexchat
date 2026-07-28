import 'package:flutter/material.dart';

void main() {
  runApp(const CodexChat());
}

class CodexChat extends StatelessWidget {
  const CodexChat({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CodexChat",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
      ),
      home: const Accueil(),
    );
  }
}

class Accueil extends StatelessWidget {
  const Accueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CodexChat"),
      ),

      body: const Center(
        child: Text(
          "Bienvenue sur CodexChat 🚀",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
