import 'package:flutter/material.dart';
import 'package:pap_copy/features/login/presentation/screens/login.dart';

class AppRoutes {
  static const String login = '/navigate.login';
  static const String adminMenu = '/navigate.adminMenu';
  static const String userMenu = '/navigate.userMenu';

  static Map<String, WidgetBuilder> get routes {
    return {
      login: (context) => Login(),
      adminMenu: (context) => Placeholder(),
      userMenu: (context) => Placeholder(),
    };
  }
}
