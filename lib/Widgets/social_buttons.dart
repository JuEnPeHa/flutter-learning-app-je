import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    Key? key,
}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(onPressed: () {}, icon: Image.asset("assets/images/google-round.png")),
        IconButton(onPressed: () {}, icon: Image.asset("assets/images/google-round.png")),
        IconButton(onPressed: () {}, icon: Image.asset("assets/images/google-round.png")),
      ],
    );
  }
}
