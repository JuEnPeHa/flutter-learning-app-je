import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Home'),
    ),
    body:Center(child: Text('Home', style: TextStyle(fontSize: 60),),),
  );
}