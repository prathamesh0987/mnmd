import 'package:flutter/material.dart';
import 'package:mnmd/widgets/home_body.dart';
import 'package:mnmd/widgets/main_layout.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MainLayout(
        widget: HomeBody(),
      ),
    );
  }
}
