import 'package:flutter/material.dart';
import 'package:portfolio_website/util/global.dart';

import 'components/drawer_class.dart';

class MainPega extends StatelessWidget {
  const MainPega({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Drawer_class(),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
