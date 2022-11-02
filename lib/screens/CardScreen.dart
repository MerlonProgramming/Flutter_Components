import 'package:flutter/material.dart';

import 'package:flutter_components/widgets/ExportsWidgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Screen')),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardList(),
            SizedBox(height: 10),
            CustomCardList2(),
          ]),
    );
  }
}
