import 'package:flutter/material.dart';
import 'package:upskills/pages/login_page.dart';
import 'package:upskills/pages/profile_page.dart';
import 'package:upskills/pages/register_page.dart';

class AppRoute {
  static const login = 'login';
  static const register = 'register';
  static const profile = 'register';

  static get all => <String, WidgetBuilder>{
        login: (context) => const LoginPage(),
        register: (context) => const RegisterPage(),
        profile: (context) => const ProfilePage(),
      };
}
