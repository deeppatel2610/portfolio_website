import 'package:flutter/material.dart';
import 'package:portfolio_website/screens/main/components/skills_class.dart';

import '../../../util/global.dart';
import 'all_coding_column.dart';
import 'all_knowledge_column.dart';
import 'all_skills_row.dart';
import 'download_and_icon_column.dart';
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
                allSkillsRow(),
                const SizedBox(
                  height: defaultPadding,
                ),
                allCodingColumn(),
                allKnowledgeColumn(),
                downloadAndIconColumn(),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
