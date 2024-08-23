import 'package:flutter/material.dart';

import '../../../models/Recommendation.dart';
import '../../../util/global.dart';

Column recommendationsClass() {
  return Column(
    children: [
      const SizedBox(
        height: defaultPadding,
      ),
      const Text(
        'Recommendations',
        style: TextStyle(
          color: Colors.white,
          fontSize: 19,
        ),
      ),
      const SizedBox(
        height: defaultPadding / 2,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            ...List.generate(
              demo_recommendations.length,
              (index) => tempClass(index: index),
            ),
          ],
        ),
      )
    ],
  );
}

Widget tempClass({required int index}) {
  return Padding(
    padding: const EdgeInsets.all(defaultPadding / 2),
    child: Container(
      width: 300,
      color: secondaryColor,
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(demo_recommendations[index].name!),
          const SizedBox(
            height: defaultPadding / 16,
          ),
          Text(
            demo_recommendations[index].source!,
            style: const TextStyle(
              color: Color(0xff5B5B62),
            ),
          ),
          const SizedBox(
            height: defaultPadding / 2,
          ),
          Text(
            demo_recommendations[index].text!,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  );
}
