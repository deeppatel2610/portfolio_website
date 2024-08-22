import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio_website/screens/main/components/skills_class.dart';

import '../../../util/global.dart';
import 'coding_class.dart';
import 'knowledge_class.dart';
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
                Column(
                  children: [
                    const Divider(),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Text(
                        'Coding',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    codingClass(end: 0.8, label: 'Dart'),
                    codingClass(end: 0.6, label: 'Python'),
                    codingClass(end: 0.7, label: 'Java'),
                    codingClass(end: 0.5, label: 'HTML'),
                    codingClass(end: 0.45, label: 'CSS'),
                  ],
                ),
                Column(
                  children: [
                    const Divider(),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Text(
                        'Knowledge',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    knowledgeClass(text: 'Dart & Flutter'),
                    knowledgeClass(text: 'Android'),
                    knowledgeClass(text: 'Figma'),
                    knowledgeClass(text: 'HTML & CSS'),
                  ],
                ),

              ],
            ),
          ),
        ),
      ],
    ),
  );
}

