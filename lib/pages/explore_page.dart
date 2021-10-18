import 'package:flutter/material.dart';
import 'package:social_network_test/Widgets/bottom_menu.dart';

class ExplorePage extends StatelessWidget {
  static String id = "explore_page";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text("Hola Mundo"),
        ),
        bottomNavigationBar: BottomMenuYouClone(),
      ),
    );
  }
}
