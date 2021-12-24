import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:social_network_test/Widgets/constants.dart';
import 'package:social_network_test/controllers/question_controller.dart';
import 'package:velocity_x/velocity_x.dart';

class Option extends StatelessWidget {
  const Option({
    Key? key,
    required this.index,
    required this.text,
    required this.press,
  }) : super(key: key);
  final int index;
  final String text;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (qnController) {
          Color getTheRightColor() {
            if (qnController.isAnswered) {
              if (index == qnController.selectedAns &&
                  qnController.selectedAns == qnController.correctAns) {
                return Colors.green;
              } else if (index == qnController.selectedAns &&
                  qnController.selectedAns != qnController.correctAns) {
                return Colors.red;
              } else {
                return Vx.gray300;
              }
            }
            return Vx.gray700;
          }

          Icon? getTheRightIcon() {
            if (getTheRightColor() == Vx.gray300 ||
                getTheRightColor() == Vx.gray700) {
              return null;
            } else {
              return Icon(
                getTheRightColor() == Colors.green ? Icons.done : Icons.close,
                color: Vx.white,
                size: 20,
              );
            }

            //return

            //Icon(
            //  getTheRightColor() == Colors.green ? Icons.done : Icons.close,
            //  size: 20,
            //);

            //getTheRightColor() == Colors.green
            //? Icons.check
            //: Icons.close;
          }

          return InkWell(
            onTap: press,
            child: Container(
              margin: EdgeInsets.only(top: defaultPadding),
              padding: EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                  border: Border.all(color: getTheRightColor()),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${index + 1} + $text",
                    style: TextStyle(color: getTheRightColor(), fontSize: 16),
                  ),
                  Container(
                      height: 26,
                      width: 26,
                      decoration: BoxDecoration(
                          color: getTheRightColor() == Vx.gray700
                              ? Colors.transparent
                              : getTheRightColor(),
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: getTheRightColor())),
                      child: getTheRightIcon()
                      ),
                ],
              ),
            ),
          );
        });
  }
}
