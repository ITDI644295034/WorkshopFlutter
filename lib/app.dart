import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:upskills/bloc/login/login_bloc.dart';

// import 'package:upskills/bloc/login/login_bloc.dart';
import 'package:upskills/pages/login_page.dart';
import 'package:upskills/pages/profile_page.dart';
import 'package:upskills/pages/register_page.dart';
import 'package:upskills/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final loginBloc = BlocProvider(create: (context) => LoginBloc());
    return MultiBlocProvider(
        providers: [loginBloc],
        child: MaterialApp(
          title: 'Slzl',
          routes: AppRoute.all,
          home: LoginPage(),
        ));
  }
}
