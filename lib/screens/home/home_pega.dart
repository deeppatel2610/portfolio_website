import 'package:flutter/material.dart';
import 'package:portfolio_website/screens/main/main_pega.dart';
import 'components/github_and_videos_text_class.dart';
import 'components/home_class.dart';
import 'components/my_project_class.dart';
import 'components/recommendations_class.dart';

class HomePega extends StatelessWidget {
  const HomePega({super.key});

  @override
  Widget build(BuildContext context) {
    return MainPega(
      children: [
        AspectRatio(
          aspectRatio: 3,
          child: homeClass(context: context),
        ),
        githubAndVideosTextClass(context: context),
        myProjectClass(),
        recommendationsClass(),
      ],
    );
  }
}
