import 'package:flutter/material.dart';
import 'package:upskills/pages/login_page.dart';
import 'package:upskills/pages/profile_page.dart';
import 'package:upskills/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app',
      routes: AppRoute.all,
      home: LoginPage(),
    );
  }
}
