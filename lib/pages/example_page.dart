import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExamplePage extends StatelessWidget {
  static String id = "example_page";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.red,
                width: 100.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}