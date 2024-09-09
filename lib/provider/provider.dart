import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:mnmd/mymodbus/mod_operation.dart';

class ValueProvider with ChangeNotifier {
  int value = -1;

  int get getValue {
    return value;
  }

  void getUpdatedValues() async {
    Uint16List list =
        await ModbusCommunication.client.readInputRegisters(20, 1);
    int data = list.first;
    value = data;
    notifyListeners();
  }
}
