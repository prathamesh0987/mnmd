import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mnmd/mymodbus/mod_operation.dart';

import '../constants/constants.dart';
import '../screens/home.dart';

TextEditingController host = TextEditingController();
TextEditingController port = TextEditingController();

class ConnectBody extends StatelessWidget {
  const ConnectBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Form(
        child: SizedBox(
          width: 450,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Text(
                'PLC Based Electro-Pneumatic Sorting System',
                style: TextStyle(
                  fontSize: 22,
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 40,
                child: TextFormField(
                  controller: host,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        25,
                      ),
                      borderSide: const BorderSide(
                        width: 1,
                        color: backgroundEndColor,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        25,
                      ),
                      borderSide: const BorderSide(
                        width: 1,
                        color: backgroundEndColor,
                      ),
                    ),
                    labelText: 'HOST NAME (IP)',
                    labelStyle: const TextStyle(
                      color: textColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 40,
                child: TextFormField(
                  controller: port,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        25,
                      ),
                      borderSide: const BorderSide(
                        width: 1,
                        color: backgroundEndColor,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 1,
                        color: backgroundEndColor,
                      ),
                      borderRadius: BorderRadius.circular(
                        25,
                      ),
                    ),
                    labelText: 'PORT',
                    labelStyle: const TextStyle(
                      color: textColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                      color: backgroundEndColor,
                      offset: Offset(
                        0,
                        4,
                      ),
                      blurRadius: 5.0,
                    )
                  ],
                  // gradient: const LinearGradient(
                  //   begin: Alignment.topLeft,
                  //   end: Alignment.bottomRight,
                  //   stops: [
                  //     0.0,
                  //     1.0,
                  //   ],
                  //   colors: [
                  //     backgroundStartColor,
                  //     backgroundEndColor,
                  //   ],
                  // ),
                  color: backgroundStartColor,
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
                height: 40,
                width: 450,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          20.0,
                        ),
                        side: const BorderSide(
                          color: backgroundEndColor,
                          width: 1,
                        ),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all(
                      const Size(
                        340,
                        50,
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      Colors.transparent,
                    ),
                    // elevation: MaterialStateProperty.all(3),
                    shadowColor: MaterialStateProperty.all(
                      Colors.transparent,
                    ),
                  ),
                  onPressed: () async {
                    try {
                      await ModbusCommunication.establishConnection(
                        host.text,
                        int.parse(port.text),
                      );
                      // ignore: use_build_context_synchronously
                      showSnackBar(
                        context,
                        'CONNECTION ESTABLISHED',
                      );

                      // ignore: use_build_context_synchronously
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => const Home(),
                        ),
                      );
                    } catch (e) {
                      showSnackBar(
                        context,
                        'Error : $e',
                      );
                    }
                  },
                  child: const Text(
                    'CONNECT',
                    style: TextStyle(
                      fontSize: 17,
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
