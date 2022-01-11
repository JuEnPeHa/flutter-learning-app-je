import 'package:flutter/material.dart';
import 'package:social_network_test/Widgets/constants.dart';
import 'package:social_network_test/Widgets/snake_button.dart';

class BarItemPage extends StatelessWidget {
  const BarItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: SnakeButton(
            child: Text("Iniciar Sesión con NEAR Wallet"),
            onTap: () {
              print("clickeado");
            },
            snakeColor: greenNEAR,
            borderColor: Colors.white,
            borderWidth: 10,
            ),
      ),
    );
  }
}
