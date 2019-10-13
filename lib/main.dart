import 'package:flutter/material.dart';
import 'package:flutter_app/inherited/Provider.dart';
import 'package:flutter_app/LoginPage.dart';
import 'package:flutter_app/managers/UserManager.dart';
import 'package:flutter_app/Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider<UserManager>(
      data: UserManager(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          Routes.chartRoute.route: (context) => Routes.chartRoute.widget,
          Routes.homeRoute.route: (context) => Routes.homeRoute.widget,
          Routes.loginRoute.route: (context) => Routes.loginRoute.widget,
          Routes.settingsRoute.route: (context) => Routes.settingsRoute.widget,
        },
        home: LoginPage(),
      ),
    );
  }
}
