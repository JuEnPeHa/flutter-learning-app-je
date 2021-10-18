import 'package:flutter/material.dart';
import 'package:social_network_test/pages/explore_page.dart';
import 'package:social_network_test/pages/principal_page.dart';
import 'package:social_network_test/pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SplashScreen(),
      //initialRoute: PrincipalPage.id,
      routes: {
        PrincipalPage.id:(_) => PrincipalPage(),
        ExplorePage.id:(_) => ExplorePage(),
      },
    );
  }
}