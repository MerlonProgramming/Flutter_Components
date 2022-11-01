import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';

import 'package:flutter_components/screens/Screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'HomeScreen',
        screen: const HomeScreen(),
        icon: Icons.home_filled),
    MenuOption(
        route: 'list-view-screen',
        name: 'ListView',
        screen: const ListViewScreen(),
        icon: Icons.grid_3x3_outlined),
    MenuOption(
        route: 'list-view2-screen',
        name: 'ListView2',
        screen: const ListView2Screen(),
        icon: Icons.grid_4x4_outlined),
    MenuOption(
        route: 'alert-screen',
        name: 'Alertas - Alerts',
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined),
    MenuOption(
        route: 'card-screen',
        name: 'Card',
        screen: const CardScreen(),
        icon: Icons.credit_card_outlined)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
