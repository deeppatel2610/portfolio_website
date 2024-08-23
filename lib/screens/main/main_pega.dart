import 'package:flutter/material.dart';
import 'package:portfolio_website/responsive.dart';
import 'package:portfolio_website/util/global.dart';

import 'components/drawer_class.dart';

class MainPega extends StatelessWidget {
  const MainPega({super.key, required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu),
                ),
              ),
            ),
      drawer: Drawer_class(),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: Drawer_class(),
                ),
              const SizedBox(
                width: defaultPadding,
              ),
              Expanded(
                  flex: 8,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [...children],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
