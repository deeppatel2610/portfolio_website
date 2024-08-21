import 'package:flutter/material.dart';

AspectRatio nameClass() {
  return AspectRatio(
    aspectRatio: 1.23,
    child: Container(
      color: const Color(0xff242430),
      child: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 24,
            ),
            CircleAvatar(
              radius: 50,
              backgroundImage:
              AssetImage('assets/images/my_img.jpg'),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Patel Deep',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Flutter Developer & student\nof red and white',
              style: TextStyle(
                color: Color(0xff6F6E75),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    ),
  );
}