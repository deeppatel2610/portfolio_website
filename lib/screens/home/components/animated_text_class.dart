import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../../../responsive.dart';
import '../../../util/global.dart';

Row animatedTextClass({required BuildContext context}) {
  return Row(
    children: [
      if (!Responsive.isMobileLarge(context)) flutterTextColor(),
      if (!Responsive.isMobileLarge(context))
        const SizedBox(
          width: defaultPadding / 2,
        ),
      const Text('I build '),
      AnimatedTextKit(
        animatedTexts: [
          TyperAnimatedText(
            'responsive web and mobile app.',
            speed: const Duration(milliseconds: 60),
          ),
          TyperAnimatedText(
            'complete e-Commerce app UI.',
            speed: const Duration(milliseconds: 60),
          ),
          TyperAnimatedText(
            'complete clock and timer app.',
            speed: const Duration(milliseconds: 60),
          ),
        ],
      ),
      if (!Responsive.isMobileLarge(context))
      const SizedBox(
        width: defaultPadding / 2,
      ),
      if (!Responsive.isMobileLarge(context)) flutterTextColor(),
    ],
  );
}

Text flutterTextColor() {
  return const Text.rich(
    TextSpan(
      text: '<',
      children: [
        TextSpan(
          text: 'flutter',
          style: TextStyle(
            color: primaryColor,
          ),
        ),
        TextSpan(text: '>')
      ],
    ),
  );
}
