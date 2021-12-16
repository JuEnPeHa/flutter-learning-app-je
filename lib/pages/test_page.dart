import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              const ExpansionTile(
                title: Text("¿Qué es una Blockchain?"),
                leading: Icon(Icons.add_box_sharp),
                backgroundColor: Colors.white54,
                children: [
                  ListTile(title: Text("Tema 1"),),
                  ListTile(title: Text("Tema 2"),),
                  ListTile(title: Text("Tema 3"),)
                ],
              ),
              const ExpansionTile(title: Text("¿Qué es NEAR?"),
              ),
              const ExpansionTile(title: Text("Primeros pasos"),
              ),
              const ExpansionTile(title: Text("Lenguajes de Programación"))
            ],
          ),
        ),
      ),
    );
  }
}
