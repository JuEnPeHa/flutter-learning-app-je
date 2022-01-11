import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/snackbar/snackbar.dart';
import 'package:lottie/lottie.dart';
import 'package:social_network_test/pages/exams_page.dart';
import 'package:social_network_test/pages/navpages/detail_page.dart';
import 'package:social_network_test/pages/snippets_page.dart';

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
    "NEAR Learning App",
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

textInsideBlueBoxes(int index) {
  List<String> textInside = [
    "El ejemplo Dapplets × NEAR es un Dapplet (una aplicación de aumento) que puede analizar publicaciones de Twitter y almacenarlas en el contrato NEAR. También puede mostrar sus tweets guardados en una página superpuesta.",
    '''Create Account
// creates a new account using funds from the account used to create it
const near = await connect(config);
const account = await near.account("example-account.testnet");
await account.createAccount(
  "example-account2.testnet", // new account name
  "8hSHprDq2StXwMtNd43wDTXQYsjXcD4MJTXQYsjXcc", // public key for new account
  "10000000000000000000" // initial balance for new account in yoctoNEAR
);
''',
    "Te faltan \$\{examenUno.puntosNecesarios - user.puntosActuales para presentar el test, ¡No te rindas! \}",
  ];
  return textInside[index];
}

nextPageFromTodayPage(int index) {
  if (index == 0) {
    Get.to(() => DetailPage());
  } else if (index == 1) {
    Get.to(() => SnippetsPage());
  } else if (index == 2) {
    Get.to(() => ExamsPage());
  }
}
