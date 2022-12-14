import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final optionsMenu = const [
    '🧑🏿‍🚀 Megaman',
    '🎖 Metal Gear',
    '💥 Super Smash',
    '🐲 Final Fantasy'
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListViewType2'),
        ),
        body: ListView.separated(
          itemCount: optionsMenu.length,
          itemBuilder: (context, index) => ListTile(
              title: Text(optionsMenu[index]),
              trailing: const Icon(Icons.arrow_forward_ios_outlined)),
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
