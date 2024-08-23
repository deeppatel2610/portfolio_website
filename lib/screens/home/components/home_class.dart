import 'package:flutter/material.dart';
import 'package:portfolio_website/responsive.dart';

import '../../../util/global.dart';
import 'animated_text_class.dart';

Stack homeClass({required BuildContext context}) {
  return Stack(
    fit: StackFit.expand,
    children: [
      Image.asset(
        'assets/images/bg.jpeg',
        fit: BoxFit.cover,
      ),
      Container(
        color: darkColor.withOpacity(0.66),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              'Discover My Amazing \nArt Space',
              style: Responsive.isDesktop(context)
                  ? const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    )
                  : const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
            ),
            animatedTextClass(context: context),
            const SizedBox(
              height: defaultPadding,
            ),
            if (!Responsive.isMobile(context))
              ElevatedButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding * 2),
                  backgroundColor: primaryColor,
                ),
                child: const Text(
                  'EXPLORE NOW',
                  style: TextStyle(color: darkColor),
                ),
              ),
          ],
        ),
      )
    ],
  );
}
