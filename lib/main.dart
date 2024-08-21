import 'package:flutter/material.dart';
import 'package:portfolio_website/screens/main/main_pega.dart';
import 'package:portfolio_website/util/global.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
     darkTheme: ThemeData.dark().copyWith(
         primaryColor: primaryColor,
         scaffoldBackgroundColor: bgColor,
         canvasColor: bgColor
    ),
      home: const MainPega(),
    );
  }
}
