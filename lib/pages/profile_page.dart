import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Profile'),
    ),
    body:Center(child: Text('Profile', style: TextStyle(fontSize: 60),),),
  );
}