import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

List lottieAnim(int index, bool repeat) {
  List lottieAnimations = [
    Lottie.asset("assets/json/video-learning.json",
        repeat: repeat, fit: BoxFit.fill),
    Lottie.asset("assets/json/learning-concept.json", repeat: repeat, fit: BoxFit.fill),
    Lottie.asset("assets/json/learn.json", repeat: repeat, fit: BoxFit.cover),
  ];

  return [lottieAnimations[index], lottieAnimations.length];
}
