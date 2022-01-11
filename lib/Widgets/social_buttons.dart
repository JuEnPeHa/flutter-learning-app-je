import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/google-round.png")),
        IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/apple-round.png")),
        IconButton(
            onPressed: () {},
            icon: Image.asset("assets/images/facebook-round.png")),
      ],
    );
  }
}
