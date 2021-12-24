import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:social_network_test/Widgets/constants.dart';
import 'package:social_network_test/pages/auth_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
        Duration(milliseconds: 500),
        () => Navigator.pushReplacementNamed(
            context, /*PrincipalPage.id*/ AuthScreen.id)

        /*
          ()=> Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context)
          => PrincipalPage(),
        ),
      ),*/

        ); // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Spacer(),
              Center(
                child: FractionallySizedBox(
                  widthFactor: 0.8,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Colors.white54,
                    child: SvgPicture.asset(logoNEAR, color: Colors.white),
                  ),
                ),
              ),
              Spacer(),
              CircularProgressIndicator(),
              SizedBox(height: 20),
              Text("Bienvenido"),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
