import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'window_buttons.dart';

class TitleBarBox extends StatelessWidget {
  const TitleBarBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WindowTitleBarBox(
      child: Row(
        children: <Widget>[
          Expanded(
            child: MoveWindow(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(
                      5.0,
                    ),
                    child: Image.asset(
                      'assets/images/svr.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Metallic & Non-Metallic Object Detection",
                    style: TextStyle(
                      fontSize: 15,
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const WindowButtons(),
        ],
      ),
    );
  }
}
