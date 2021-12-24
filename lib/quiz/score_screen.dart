import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_network_test/controllers/question_controller.dart';
import 'package:velocity_x/velocity_x.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blue,
            Vx.purple400,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              children: [
                Spacer(
                  flex: 3,
                ),
                Text(
                  "Puntaje",
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: CupertinoColors.secondaryLabel),
                ),
                Spacer(),
                Text(
                  "${_qnController.numOfCorrectAns * 10}/${_qnController.questions.length * 10}",
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: CupertinoColors.secondaryLabel),
                ),
                Spacer(
                  flex: 3,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
