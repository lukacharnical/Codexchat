import 'package:flutter/material.dart';

class EditorPage extends StatefulWidget {
  final String projet;

  const EditorPage({
    super.key,
    required this.projet,
  });

  @override
  State<EditorPage> createState() => _EditorPageState();
}


class _EditorPageState extends State<EditorPage> {

  String fichier = "main.py";

  String code = """
print("Bienvenue dans CodexChat")
""";


  List<String> fichiers = [
    "main.py",
    "index.html",
    "style.css",
    "main.cpp",
    "Main.java",
    "main.rb",
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text(widget.projet),
      ),


      body: Column(
        children: [

          SizedBox(
            height: 60,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: fichiers.length,

              itemBuilder: (context,index){

                return Padding(
                  padding: const EdgeInsets.all(5),

                  child: ElevatedButton(
                    onPressed: (){

                      setState(() {
                        fichier = fichiers[index];
                      });

                    },

                    child: Text(fichiers[index]),
                  ),
                );

              },
            ),
          ),


          Expanded(

            child: Padding(
              padding: const EdgeInsets.all(10),

              child: TextField(

                maxLines: null,

                expands: true,

                controller: TextEditingController(
                  text: code,
                ),

                onChanged: (value){
                  code = value;
                },


                decoration: InputDecoration(

                  hintText: "Écrire votre code ici",

                  border: OutlineInputBorder(),

                ),

                style: const TextStyle(
                  fontFamily: "monospace",
                  fontSize: 15,
                ),

              ),

            ),

          ),

        ],
      ),

    );
  }
}
