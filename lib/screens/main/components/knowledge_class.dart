import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../util/global.dart';

Widget knowledgeClass({required String text}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: defaultPadding / 2),
    child: Row(
      children: [
        SvgPicture.network("assets/icons/check.svg"),
        const SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Color(0xff4D4C53),
          ),
        ),
      ],
    ),
  );
}
