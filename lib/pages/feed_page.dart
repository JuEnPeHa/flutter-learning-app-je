import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text('Feed'),
    ),
    body:Center(child: Text('Feed', style: TextStyle(fontSize: 60),),),
  );
}