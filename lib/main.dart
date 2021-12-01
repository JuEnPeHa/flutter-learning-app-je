import 'package:flutter/material.dart';
import 'package:social_network_test/Widgets/constants.dart';
import 'package:social_network_test/pages/auth_screen.dart';
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
      title: 'NEAR Learning App',
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.white38,
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.white),
            contentPadding: EdgeInsets.symmetric(
                vertical: defaultPadding * 1.2, horizontal: defaultPadding),
          ),
        ),
      home: SplashScreen() /*BottomMenuLA()*/,
      //initialRoute: PrincipalPage.id,
      routes: {
        PrincipalPage.id:(_) => PrincipalPage(),
        AuthScreen.id:(_) => AuthScreen(),
      },
    );
  }
}