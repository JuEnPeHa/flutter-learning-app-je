import 'package:flutter/material.dart';
import 'package:social_network_test/Widgets/constants.dart';
import 'package:social_network_test/Widgets/login_form.dart';

class AuthScreen extends StatelessWidget {
  static String id = "auth_screen";

  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            width: _size.width / 5 * 4.5,
            height: _size.height,
            child: Container(
              color: login_bg,
              child: LoginForm(),
            ),
          )

        ],
      ),
    );
  }
}