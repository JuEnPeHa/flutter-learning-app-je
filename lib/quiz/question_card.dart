import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_network_test/Widgets/constants.dart';
import 'package:social_network_test/controllers/question_controller.dart';
import 'package:social_network_test/model/questions.dart';
import 'package:social_network_test/quiz/option.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key? key,
    required this.question,
  }) : super(key: key);

  final Question question;


  @override
  Widget build(BuildContext context) {
      QuestionController _controller = Get.put(QuestionController());

    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Colors.black),
          ),
          SizedBox(height: defaultPadding / 2),
          ...List.generate(
              question.options.length,
              (index) => Option(
                  index: index, text: question.options[index],
                   press: () => _controller.checkAns(question, index),
                   ),
                   ),
        ],
      ),
    );
  }
}
