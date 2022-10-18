import 'package:flutter/material.dart';
import 'package:flutter_components/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final options = AppRoutes.menuOptions.toList();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Components of Flutter'),
          backgroundColor: Colors.indigoAccent,
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(options[index].icon),
                  title: Text(options[index].name),
                  onTap: () {
                    Navigator.pushNamed(context, options[index].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoutes.menuOptions.length));
  }
}
