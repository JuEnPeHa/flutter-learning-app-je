import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
          borderRadius: BorderRadius.circular(10), color: Vx.purple500),
      child: Row(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.linear_scale),
              Icon(Icons.arrow_right),
              Icon(Icons.arrow_back_ios_new)
                  .backgroundColor(Colors.blue)
                  .rotate180()
                  .offset(offset: Offset(-15, 0)),
              Icon(Icons.arrow_right),
              Icon(Icons.arrow_back_ios_new)
                  .backgroundColor(Colors.blue)
                  .rotate180()
                  .offset(offset: Offset(-15, 0)),
            ],
          ),
        ],
      ),
    );
  }
}
