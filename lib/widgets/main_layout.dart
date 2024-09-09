import 'package:flutter/material.dart';
import 'package:mnmd/widgets/title_bar.dart';

import '../constants/constants.dart';

class MainLayout extends StatelessWidget {
  final Widget? widget;
  const MainLayout({Key? key, this.widget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  backgroundStartColor,
                  backgroundStartColor,
                ],
                stops: [
                  0.0,
                  1.0,
                ],
              ),
            ),
            child: Column(
              children: <Widget>[
                const TitleBarBox(),
                widget!,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
