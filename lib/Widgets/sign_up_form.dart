import 'package:flutter/material.dart';
import 'package:social_network_test/Widgets/constants.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(
      horizontal: MediaQuery.of(context).size.width * 0.13),
      child: Form(
        child: Column(
          children: [
            Spacer(),
            TextFormField(
              decoration: InputDecoration(
                hintText: ingles ? "Email" : "Correo Electronico",
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: ingles ? "Password" : "Contraseña"
                ),
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: ingles ? "Confirm Password" : "Confirmar Contraseña",
              ),
            ),
            Spacer(flex: 2)
          ],
        ),
      ),
    );
  }

}