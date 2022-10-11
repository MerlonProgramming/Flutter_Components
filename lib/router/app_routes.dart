import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';

import 'package:flutter_components/screens/Screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: '/home',
        name: 'HomeScreen',
        screen: HomeScreen(),
        icon: Icons.home_filled),
    MenuOption(
        route: '/list-view-screen',
        name: 'ListView',
        screen: ListViewScreen(),
        icon: Icons.grid_3x3_outlined),
    MenuOption(
        route: '/list-view2-screen',
        name: 'ListView2',
        screen: ListView2Screen(),
        icon: Icons.grid_4x4_outlined),
    MenuOption(
        route: '/alert-screen',
        name: 'Alertas - Alerts',
        screen: AlertScreen(),
        icon: Icons.add_alert_outlined),
    MenuOption(
        route: '/card-screen',
        name: 'Card',
        screen: CardScreen(),
        icon: Icons.credit_card_outlined)
  ];

  static Map<String, Widget Function(BuildContext)> routes = {
    '/home': (context) => const HomeScreen(),
    '/list-view-screen': (context) => const ListViewScreen(),
    '/list-view2-screen': (context) => const ListView2Screen(),
    '/alert-screen': (context) => const AlertScreen(),
    '/card-screen': (context) => const CardScreen(),
  };

  static Route<dynamic> onGenerateRoute(settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
