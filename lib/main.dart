import 'package:flutter/material.dart';
import 'package:pap_copy/core/navigation/app_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRouter.login,
      routes: AppRouter.routes,
    );
  }
}