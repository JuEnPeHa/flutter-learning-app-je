import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                CupertinoSearchTextField(
                  borderRadius: BorderRadius.circular(25),
                  placeholder: 'Search',
                  onChanged: (value) {
                    print(value);
                  },
                ).py12(),
                ExpansionTile(
                  tilePadding: EdgeInsets.zero,
                  title: "¿Qué es una Blockchain?"
                      .text
                      .white
                      .medium
                      .bold
                      .center
                      .makeCentered()
                      .box
                      .rounded
                      .red500
                      .shadow2xl
                      .make()
                      .wh(500, 25)
                      .centered() /*Text("")*/,
                  leading: Icon(Icons.add_box_sharp),
                  //backgroundColor: Colors.white54,
                  children: [
                    ListTile(
                      title: Text("Tema 1"),
                    ),
                    ListTile(
                      title: Text("Tema 2"),
                    ),
                    ListTile(
                      title: Text("Tema 3"),
                    )
                  ],
                  /*trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const Icon(Icons.add_box_sharp),
                    ],
                  ),*/
                ),
                SizedBox(
                  height: 5,
                ),
                const ExpansionTile(
                  title: Text("¿Qué es NEAR?"),
                  leading: Icon(Icons.add_box_sharp),
                  //backgroundColor: Colors.white54,
                  children: [
                    ListTile(
                      title: Text("Tema 1"),
                    ),
                    ListTile(
                      title: Text("Tema 2"),
                    ),
                    ListTile(
                      title: Text("Tema 3"),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                const ExpansionTile(
                  title: Text("Primeros pasos"),
                  leading: Icon(Icons.add_box_sharp),
                  //backgroundColor: Colors.white54,
                  children: [
                    ListTile(
                      title: Text("Tema 1"),
                    ),
                    ListTile(
                      title: Text("Tema 2"),
                    ),
                    ListTile(
                      title: Text("Tema 3"),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                const ExpansionTile(
                  title: Text("Lenguajes de Programación"),
                  leading: Icon(Icons.add_box_sharp),
                  //backgroundColor: Colors.white54,
                  children: [
                    ListTile(
                      title: Text("Tema 1"),
                    ),
                    ListTile(
                      title: Text("Tema 2"),
                    ),
                    ListTile(
                      title: Text("Tema 3"),
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
