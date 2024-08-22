import 'package:flutter/material.dart';
import 'package:portfolio_website/screens/main/components/skills_class.dart';


Row allSkillsRow() {
  return Row(
    children: [
      Expanded(
        child: skillsClass(end: 0.8, label: 'c'),
      ),
      const SizedBox(
        width: 10,
      ),
      Expanded(
        child: skillsClass(end: 0.6, label: 'C++'),
      ),
      const SizedBox(
        width: 10,
      ),
      Expanded(
        child: skillsClass(end: 0.7, label: 'Flutter'),
      ),
    ],
  );
}