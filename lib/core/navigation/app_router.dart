import 'package:flutter/material.dart';

class AppRouter {
    static const String login = '/navigate.login';

    static Map<String, WidgetBuilder> get routes {
      return {
        login: (context) => Placeholder(),
      };
    }
}

