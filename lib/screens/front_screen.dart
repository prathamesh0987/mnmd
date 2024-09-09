import 'package:flutter/material.dart';
import 'package:mnmd/widgets/main_layout.dart';

import '../widgets/connect_body.dart';

TextEditingController host = TextEditingController();
TextEditingController port = TextEditingController();

class FrontScreen extends StatelessWidget {
  const FrontScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MainLayout(
        widget: ConnectBody(),
      ),
    );
  }
}
