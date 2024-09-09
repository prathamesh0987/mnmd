import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var valueProvider = Provider.of<ValueProvider>(context);
    valueProvider.getUpdatedValues;
    int value = valueProvider.getValue;
    String msg = "";
    switch (value) {
      case 0:
        msg = "METALIC OBJECT SENSED";
        break;
      case 1:
        msg = "NON-METALIC OBJECT SENSED";
        break;
      case 3:
        msg = "METALIC SORTING ARM ACTIVATED";
        break;
      case 4:
        msg = "NON-METALIC SORTING ARM ACTIVATED";
        break;
      case 5:
        msg = "EJECTION ARM ACTIVATED";
        break;
    }

    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Card(
                color: value == 0 ? Colors.green : Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      15,
                    ),
                  ),
                ),
                child: const SizedBox(
                  height: 300,
                  width: 350,
                  child: Center(
                    child: Text(
                      "METAL",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: value == 1 ? Colors.green : Colors.white,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      15,
                    ),
                  ),
                ),
                child: const SizedBox(
                  height: 300,
                  width: 350,
                  child: Center(
                    child: Text(
                      "NON-METAL",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 20,
            ),
            child: Card(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(
                    15,
                  ),
                ),
              ),
              child: SizedBox(
                height: 100,
                width: 740,
                child: Center(
                  child: Text(
                    value == -1 ? "" : msg,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
