import 'package:flutter/material.dart';
import 'package:social_network_test/Widgets/constants.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key,}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
      horizontal: MediaQuery.of(context).size.width / 5),
      child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              TextFormField(
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                  hintText: ingles ? "Email" : "Correo Electronico",
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
              child: TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  //border: OutlineInputBorder(),
                  hintText: ingles ? "Password" : "Contraseña"
                ),
              ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    ingles ? "Forgot Password?" : "¿Olvidaste tu Contraseña?",
                    style: TextStyle(color: Colors.white),
                  ),
              ),
              Spacer(flex: 2),
            ],
          ),
      ),
    );
  }
}