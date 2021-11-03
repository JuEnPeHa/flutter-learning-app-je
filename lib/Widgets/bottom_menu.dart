import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:social_network_test/Widgets/constants.dart';
import 'package:social_network_test/pages/principal_page.dart';

class BottomMenuLA extends StatefulWidget {

  @override
  _BottomMenuLA createState() => _BottomMenuLA();
}

class _BottomMenuLA extends State<BottomMenuLA> {
  int index = 2;
  int _currentIndex = 2;
  //int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {


return Scaffold(
  appBar: AppBar(
    title: Text("Curved Navigation Bar"),
    elevation: 0,
    centerTitle: true,
  ),
);
  }
  }
