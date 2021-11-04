import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class Navigation {
  static intentWithData(String routeName, Object arguments) {
    navigatorKey.currentState?.pushNamed(routeName, arguments: arguments);
  }

  static backWithRefresh(routeName, Object arguments, void function) {
    navigatorKey.currentState!
        .pushNamed(routeName, arguments: arguments)
        .then((value) => function);
  }

  static back() => navigatorKey.currentState?.pop();
}
