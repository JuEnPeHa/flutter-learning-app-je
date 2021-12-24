import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_network_test/Widgets/constants.dart';
import 'package:social_network_test/Widgets/custom_page_route.dart';
import 'package:social_network_test/controllers/question_controller.dart';
import 'package:social_network_test/quiz/body_quiz.dart';
import 'package:social_network_test/quiz/score_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class ExamsPage extends StatefulWidget {
  const ExamsPage({Key? key}) : super(key: key);

  @override
  _ExamsPageState createState() => _ExamsPageState();
}

class _ExamsPageState extends State<ExamsPage> {
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [blueNEAR.withOpacity(1.0), Color(0x302850).withOpacity(1.0)],
        ),
        //color: Vx.randomPrimaryColor,
        //image: DecorationImage(
        //  image: AssetImage("assets/images/Image (69).jpg"),
        //fit: BoxFit.fitHeight),
      ),
      child: SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: greenNEAR.withAlpha(5),
            elevation: 0,
            actions: [
              ElevatedButton(
                  onPressed: () =>
                      _controller.nextQuestion() //Navigator.of(context)
                  //.push(CustomPageRoute(
                  //  child: ScoreScreen(),
                  //direction: AxisDirection.right))
                  ,
                  child: Text(
                    "Saltar",
                    style: TextStyle(backgroundColor: Colors.transparent),
                  ).tooltip("No ganarás puntos si saltas"),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      shadowColor:
                          MaterialStateProperty.all(Colors.transparent))),
            ],
            toolbarOpacity: 0.25,
          ),
          body: BodyQuiz(),
        ),
      ),
    );
  }
}
