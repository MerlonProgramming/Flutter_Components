import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  final optionsMenu = const [
    '🧑🏿‍🚀 Megaman',
    '🎖 Metal Gear',
    '💥 Super Smash',
    '🐲 Final Fantasy'
  ];

  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListViewType1'),
        ),
        body: ListView(
          children: [
            ...optionsMenu
                .map((game) => ListTile(
                      title: Text(game),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ))
                .toList()
          ],
        ));
  }
}
