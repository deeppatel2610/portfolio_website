import 'package:flutter/material.dart';

import '../../../util/global.dart';

Widget codingClass({required String label, required double end}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: defaultPadding),
    child: TweenAnimationBuilder(
      tween: Tween<double>(begin: 1, end: end),
      duration: defaultDuration,
      builder: (context, double value, child) => Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                '${(value * 100).toInt().toString()}%',
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
          LinearProgressIndicator(
            value: value,
            color: primaryColor,
            backgroundColor: darkColor,
          ),
        ],
      ),
    ),
  );
}
