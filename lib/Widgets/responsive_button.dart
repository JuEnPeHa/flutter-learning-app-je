import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_network_test/Widgets/constants.dart';
import 'package:velocity_x/velocity_x.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({Key? key, this.isResponsive = false, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Vx.blue500),
      child: Row(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 10.0,
                  ),
                  Icon(Icons.arrow_right),
                  Icon(Icons.arrow_back_ios_new)
                      .rotate180()
                      .offset(offset: Offset(-15, 0)),
                  Icon(Icons.arrow_right),
                  Icon(Icons.arrow_back_ios_new)
                      .rotate180()
                      .offset(offset: Offset(-15, 0)),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 35.0,
                  ),
                  Icon(
                    Icons.arrow_back_ios_new,
                  ).rotate180().offset(offset: Offset(0, 0)),
                  SizedBox(width: 25.0),
                  Icon(
                    Icons.arrow_back_ios_new,
                  ).rotate180().offset(offset: Offset(0, 0)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
