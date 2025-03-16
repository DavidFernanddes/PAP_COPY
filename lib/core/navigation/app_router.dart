import 'package:flutter/material.dart';
import 'package:pap_copy/features/login/presentation/screens/login.dart';
import 'package:pap_copy/features/user/menu/presentation/screens/menu.dart';
import 'package:pap_copy/features/user/missingQr/presentation/missing_qr.dart';

class AppRoutes {
  static const String login = '/navigate.login';
  static const String adminMenu = '/navigate.adminMenu';
  static const String userMenu = '/navigate.userMenu';
  static const String missingQr = '/navigate.missingQr';

  static Map<String, WidgetBuilder> get routes {
    return {
      login: (context) => Login(),
      adminMenu: (context) => Placeholder(),
      userMenu: (context) => UserMenu(),
      missingQr: (context) => MissingQr(),
    };
  }
}
