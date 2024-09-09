import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mnmd/provider/provider.dart';
import 'package:mnmd/screens/front_screen.dart';
import 'package:provider/provider.dart';

import 'constants/constants.dart';

void main() {
  runApp(const MyApp());

  doWhenWindowReady(() {
    var initialSize = const Size(800, 500);
    appWindow.size = initialSize;
    appWindow.minSize = initialSize;
    // appWindow.title = "Metal & Non-Metal Detector";
    appWindow.maxSize = initialSize;
    appWindow.alignment = Alignment.center;
    appWindow.show();
  });
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ValueProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const FrontScreen(),
        theme: ThemeData(
          primaryColor: backgroundStartColor,
          fontFamily: GoogleFonts.lato().fontFamily,
          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: textColor,
          ),
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: backgroundEndColor),
          unselectedWidgetColor: backgroundEndColor,
        ),
      ),
    );
  }
}
