import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../util/global.dart';

Column downloadAndIconColumn() {
  return Column(
    children: [
      const Divider(),
      const SizedBox(height: defaultPadding),
      TextButton(
        onPressed: () {},
        child: FittedBox(
          child: Row(
            children: [
              const Text(
                'DOWNLOAD CV',
                style: TextStyle(
                    color: Color(0xff4D4C53), fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: defaultPadding / 2,
              ),
              SvgPicture.network('assets/icons/download.svg'),
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: defaultPadding),
        color: const Color(0xff24242E),
        child: Row(
          children: [
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.network('assets/icons/linkedin.svg'),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.network('assets/icons/github.svg'),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.network('assets/icons/twitter.svg'),
            ),
            const Spacer()
          ],
        ),
      )
    ],
  );
}
