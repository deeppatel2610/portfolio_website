import 'package:flutter/material.dart';

import '../../../util/global.dart';
import 'knowledge_class.dart';

Column allKnowledgeColumn() {
  return Column(
    children: [
      const Divider(),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: defaultPadding),
        child: Text(
          'Knowledge',
          style: TextStyle(color: Colors.white),
        ),
      ),
      knowledgeClass(text: 'Dart & flutter'),
      knowledgeClass(text: 'Android'),
      knowledgeClass(text: 'Figma'),
      knowledgeClass(text: 'HTML & CSS'),
    ],
  );
}
