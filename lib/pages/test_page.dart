import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text("Examenes", style: TextStyle(fontSize: 60)),
        ),
      ),
    );
  }
}
