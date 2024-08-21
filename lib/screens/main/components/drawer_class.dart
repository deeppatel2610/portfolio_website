import 'package:flutter/material.dart';
import 'package:portfolio_website/screens/main/components/skills_class.dart';

import '../../../util/global.dart';
import 'name_class.dart';

Drawer Drawer_class() {
  return Drawer(
    child: Column(
      children: [
        nameClass(),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                textClass(text: 'Residence', text2: 'India'),
                textClass(text: 'City', text2: 'Surat'),
                textClass(text: 'Age', text2: '19'),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Text(
                    'Skills',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: skillsClass(end: 0.8, label: 'c'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: skillsClass(end: 0.6, label: 'C++'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: skillsClass(end: 0.7, label: 'Flutter'),
                    ),
                  ],
                ),
                const Divider(),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: defaultPadding),
                  child: Text(
                    'Coding',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TweenAnimationBuilder(
                  tween: Tween<double>(begin: 1, end: 0.8),
                  duration: defaultDuration,
                  builder: (context, double value, child) => Column(
                    children: [
                      Row(
                        children: [
                          Text('Dart',style: TextStyle(color: Colors.white),),

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
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
