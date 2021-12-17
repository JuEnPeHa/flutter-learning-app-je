import 'package:flutter/material.dart';
import 'package:social_network_test/Widgets/constants.dart';
import 'package:social_network_test/Widgets/custom_page_route.dart';
import 'package:social_network_test/pages/exams_page.dart';

class ExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: [
          FloatingActionButton(
            onPressed: () => Navigator.of(context).push(
              CustomPageRoute(
                  child: ExamsPage(), direction: AxisDirection.left),
            ),
            tooltip: "Ir a Examenes",
            elevation: 50,
            focusColor: redNEAR,
            backgroundColor: lilacNEAR,
            splashColor: greenNEAR,
          ),
          SizedBox(
            height: 400,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.red,
                  width: 100.0,
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.blueAccent,
                    width: 100,
                  ),
                ),
                Container(
                  color: Colors.redAccent,
                  width: 100,
                ),
                Container(
                  color: Colors.greenAccent,
                  width: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
