import 'package:flutter/material.dart';

import '../../../responsive.dart';
import '../../../util/global.dart';

Padding githubAndVideosTextClass({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: defaultPadding),
    child: Responsive.isMobileLarge(context)
        ? Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  textGithubClass(text: '  Subscribers', num: 30, text2: 'K+'),
                  textGithubClass(text: '  Videos', num: 20, text2: '+'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  textGithubClass(
                      text: '  GitHub Projects', num: 10, text2: '+'),
                  textGithubClass(text: '  Stars', num: 5, text2: 'K+'),
                ],
              )
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              textGithubClass(text: '  Subscribers', num: 30, text2: 'K+'),
              textGithubClass(text: '  Videos', num: 20, text2: '+'),
              textGithubClass(text: '  GitHub Projects', num: 10, text2: '+'),
              textGithubClass(text: '  Stars', num: 5, text2: 'K+'),
            ],
          ),
  );
}

Row textGithubClass(
    {required String text2, required String text, required int num}) {
  return Row(
    children: [
      tweenAnimationBuilderClass(num: num, text: text2),
      Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
    ],
  );
}

TweenAnimationBuilder<int> tweenAnimationBuilderClass(
    {required int num, required String text}) {
  return TweenAnimationBuilder(
    tween: IntTween(begin: 0, end: num),
    duration: defaultDuration,
    builder: (context, value, child) => Text(
      '$value$text',
      style: const TextStyle(color: primaryColor),
    ),
  );
}
