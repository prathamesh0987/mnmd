import 'dart:developer';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../mymodbus/mod_operation.dart';

var buttonColors = WindowButtonColors(
  iconNormal: backgroundEndColor,
  mouseOver: backgroundEndColor,
  mouseDown: backgroundStartColor,
  iconMouseOver: backgroundStartColor,
  iconMouseDown: backgroundEndColor,
  // normal: backgroundStartColor,
);

class WindowButtons extends StatelessWidget {
  const WindowButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(
          colors: buttonColors,
        ),
        MaximizeWindowButton(
          colors: buttonColors,
        ),
        CloseWindowButton(
          colors: buttonColors,
          onPressed: () async {
            try {
              await ModbusCommunication.client.close();
            } catch (e) {
              log(e.toString());
            } finally {
              appWindow.close();
            }
          },
        ),
      ],
    );
  }
}
