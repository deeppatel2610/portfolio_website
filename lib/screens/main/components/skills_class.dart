import 'package:flutter/material.dart';

import '../../../util/global.dart';

Column skillsClass({required double end, required String label}) {
  return Column(
    children: [
      AspectRatio(
        aspectRatio: 1,
        child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: end),
          duration: defaultDuration,
          builder: (context, double value, child) => Stack(
            fit: StackFit.expand,
            children: [
              CircularProgressIndicator(
                value: value,
                color: primaryColor,
                backgroundColor: darkColor,
              ),
              Center(
                child: Text(
                  "${(value * 100).toInt().toString()}%",
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: defaultPadding / 2,
      ),
      Text(
        label,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: const TextStyle(color: Colors.white),
      ),
    ],
  );
}

Widget textClass({required String text, required String text2}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: defaultPadding / 2),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
        Text(
          text2,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    ),
  );
}
