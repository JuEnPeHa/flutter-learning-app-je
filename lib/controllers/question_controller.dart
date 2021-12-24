import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:social_network_test/Widgets/custom_page_route.dart';
import 'package:social_network_test/model/questions.dart';
import 'package:social_network_test/quiz/score_screen.dart';

class QuestionController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  Animation get animation => this._animation;

  PageController? _pageController;
  PageController? get pageController => this._pageController;

  List<Question> _questions = sample_questions
      .map((question) => Question(
            id: question['id'],
            question: question['question'],
            options: question['options'],
            answer: question['answer_index'],
          ))
      .toList();

  List<Question> get questions => this._questions;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  int? _correctAns;
  int? get correctAns => this._correctAns;

  int? _selectedAns;
  int? get selectedAns => this._selectedAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;

  @override
  void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: 60), vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController)
      ..addListener(() {
        update();
      });

    _animationController.forward().whenComplete(() => nextQuestion());
    _pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController?.dispose();
  }

  void checkAns(Question question, int selectedIndex) {
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;

    print("$_numOfCorrectAns");
    _animationController.stop();
    update();

    Future.delayed(Duration(seconds: 1), () {
      nextQuestion();
    });
  }

  void nextQuestion() {
    if (_questionNumber.value != _questions.length) {
      _isAnswered = false;
      //_correctAns = null;
      //_selectedAns = null;
      _pageController!
          .nextPage(duration: Duration(milliseconds: 500), curve: Curves.ease);

      _animationController.reset();
      _animationController.forward().whenComplete(() => nextQuestion());
      //update();
    } else {
      Get.to(ScoreScreen());
      print(_numOfCorrectAns);
    }

    //else {
    //_animationController.stop();
    //}
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}
