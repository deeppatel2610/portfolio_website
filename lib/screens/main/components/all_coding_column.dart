import 'package:flutter/material.dart';

import '../../../util/global.dart';
import 'coding_class.dart';

Column allCodingColumn() {
  return Column(
    children: [
      const Divider(),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: defaultPadding),
        child: Text(
          'Coding',
          style: TextStyle(color: Colors.white),
        ),
      ),
      codingClass(label: 'Dart', end: 0.8),
      codingClass(label: 'Java', end: 0.65),
      codingClass(label: 'Python', end: 0.6),
      codingClass(label: 'HTML', end: 0.4),
      codingClass(label: 'CSS', end: 0.5),
    ],
  );
}
