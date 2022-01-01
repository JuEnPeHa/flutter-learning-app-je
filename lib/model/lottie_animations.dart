import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:lottie/lottie.dart';

List lottieAnim(int index, {bool? repeat}) {
  repeat = repeat == null ? false : true;
  List lottieAnimations = [
    Lottie.asset("assets/json/video-learning.json",
        repeat: repeat, fit: BoxFit.contain),
    Lottie.asset("assets/json/learning-concept.json",
        repeat: repeat, fit: BoxFit.contain),
    Lottie.asset("assets/json/learn.json", repeat: repeat, fit: BoxFit.contain),
  ];

  return [lottieAnimations[index], lottieAnimations.length];
}

titleLottieAnim(int index) {
  List<String> titleLottieAnimations = [
    "Texto de ejemplo 1",
    "Texto de ejemplo 2",
    "Texto de ejemplo 3",
  ];
  return titleLottieAnimations[index];
}

subtitleLottieAnim(int index) {
  List<String> subtitleLottieAnimations = [
    "Subtitulo de ejemplo 1",
    "Subtitulo de ejemplo 2",
    "Subtitulo de ejemplo 3",
  ];
  return subtitleLottieAnimations[index];
}

textLottieAnim(int index) {
  List<String> textLottieAnimations = [
    "Bienvenido, gracias por tu interés en aprender a crear fantasticas aplicaciones en NEAR Protocol",
    "Esta aplicación está diseñada para que aprendas a tu ritmo, ¡Y en cualquier momento!",
    "Esperamos que la aplicación te sea de utilidad, cualquier comentario (Bueno o Malo) es importante para nosotros",
  ];
  return textLottieAnimations[index];
}
