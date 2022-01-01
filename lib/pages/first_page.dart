import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:social_network_test/model/lottie_animations.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: lottieAnim(index, false)[1],
          itemBuilder: (_, index) {
            return Stack(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  alignment: FractionalOffset(0.5, 0.5),
                  padding: EdgeInsets.symmetric(vertical: 0.0),
                  transform: Matrix4.identity()..scale(1.0, 1.50),
                  //alignment: Alignment.bottomCenter,
                  child: lottieAnim(index, false)[0],
                ),
              ],
            );
          }),
    );
    //Container(child: lottieAnim(2, false),);
  }
}
