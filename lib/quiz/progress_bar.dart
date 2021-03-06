import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:social_network_test/Widgets/constants.dart';
import 'package:social_network_test/controllers/question_controller.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF3F4768), width: 3),
        borderRadius: BorderRadius.circular(50),
      ),
      child: GetBuilder<QuestionController>(
        init: QuestionController(),
          builder: (controller) {
          print(controller.animation.value);
          return Stack(
            children: [
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  width: constraints.maxWidth * controller.animation.value,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.green, greenNEAR],
                      ),
                      borderRadius: BorderRadius.circular(50)),
                ),
              ),
              Positioned.fill(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("${(controller.animation.value * 60).round()/*.toInt()*/} sec"),
                        Icon(CupertinoIcons.clock),
                      ],
                    ),
                  ))
            ],
          );
        }
      ),
    );
  }
}