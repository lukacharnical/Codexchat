import 'package:flutter/material.dart';
import 'screens/projects.dart';

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
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  int page = 0;

  final pages = [
    const Center(
      child: Text(
        "💬 Messagerie",
        style: TextStyle(fontSize: 25),
      ),
    ),

    const ProjectsPage(),

    const Center(
      child: Text(
        "🤖 Assistant IA",
        style: TextStyle(fontSize: 25),
      ),
    ),
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("CodexChat"),
      ),

      body: pages[page],

      bottomNavigationBar: NavigationBar(

        selectedIndex: page,

        onDestinationSelected: (index){
          setState(() {
            page = index;
          });
        },

        destinations: const [

          NavigationDestination(
            icon: Icon(Icons.chat),
            label: "Chat",
          ),

          NavigationDestination(
            icon: Icon(Icons.folder),
            label: "Projets",
          ),

          NavigationDestination(
            icon: Icon(Icons.smart_toy),
            label: "IA",
          ),

        ],
      ),
    );
  }
}
