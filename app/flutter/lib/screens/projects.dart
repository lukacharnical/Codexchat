import 'package:flutter/material.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage({super.key});

  @override
  State<ProjectsPage> createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {

  List<String> projets = [
    "🐍 Projet Python",
    "🌐 Site HTML",
    "➕ Projet C++",
  ];

  void ajouterProjet() {
    setState(() {
      projets.add("📁 Nouveau projet");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mes projets"),
      ),

      body: ListView.builder(
        itemCount: projets.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: const Icon(Icons.code),
              title: Text(projets[index]),
              trailing: IconButton(
  icon: const Icon(Icons.edit),
  onPressed: () {

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditorPage(
          projet: projets[index],
        ),
      ),
    );

  },
),
            ),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: ajouterProjet,
        child: const Icon(Icons.add),
      ),
    );
  }
}
