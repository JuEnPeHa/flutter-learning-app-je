import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExamplePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          color: Colors.red,
          width: 100.0,
        ),
        Flexible(
          flex: 1,
          child: Container(
            color: Colors.blueAccent,
          width: 100,)
          ,),
        Container(
          color: Colors.redAccent,
          width: 100,
        ),
        Container(
          color: Colors.greenAccent,
          width: 100,),
      ],
    );
  }
}