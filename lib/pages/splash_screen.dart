import 'package:flutter/material.dart';
import 'package:social_network_test/pages/principal_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(
      Duration(milliseconds: 5000),
        ()=> Navigator.pushReplacementNamed(context, PrincipalPage.id)

          /*
          ()=> Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context)
          => PrincipalPage(),
        ),
      ),*/

    );    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Spacer(),
            Center(
              child: FractionallySizedBox(widthFactor: 0.8,
                child: Image.asset("assets/images/JEPH.png",
                  /*height: 50,*/
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

    );
  }
}

