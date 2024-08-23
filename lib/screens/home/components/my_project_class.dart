import 'package:flutter/material.dart';
import 'package:portfolio_website/responsive.dart';

import '../../../models/Project.dart';
import '../../../util/global.dart';

Column myProjectClass() {
  return Column(
    children: [
      const Text(
        'My projects',
        style: TextStyle(
          color: Colors.white,
          fontSize: 19,
        ),
      ),
      const SizedBox(
        height: defaultPadding,
      ),
      Responsive(
        mobile: gridViewClass(childAspectRatio: 1.3, crossAxisCount: 1),
        mobileLarge: gridViewClass(childAspectRatio: 1.3, crossAxisCount: 2),
        tablet: gridViewClass(childAspectRatio: 1.1, crossAxisCount: 3),
        desktop: gridViewClass(childAspectRatio: 1.3, crossAxisCount: 3),
      )
    ],
  );
}

GridView gridViewClass({required childAspectRatio, required crossAxisCount}) {
  return GridView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemCount: demo_projects.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: crossAxisCount,
      crossAxisSpacing: defaultPadding,
      mainAxisSpacing: defaultPadding,
      childAspectRatio: childAspectRatio,
    ),
    itemBuilder: (context, index) => Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            demo_projects[index].title!,
            maxLines: 2,
            style: const TextStyle(fontSize: 16),
            overflow: TextOverflow.ellipsis,
          ),
          const Spacer(),
          Text(
            demo_projects[index].description!,
            maxLines: Responsive.isMobileLarge(context) ? 4 : 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              height: 1.5,
              color: Color(0xff5B5B62),
            ),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Read more>>',
              style: TextStyle(color: primaryColor),
            ),
          ),
        ],
      ),
    ),
  );
}
