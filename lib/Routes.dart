import 'package:flutter/material.dart';
import 'package:flutter_app/ChartPage.dart';
import 'package:flutter_app/HomePage.dart';
import 'package:flutter_app/LoginPage.dart';
import 'package:flutter_app/SettingsPage.dart';


class Routes {
  static final homeRoute = RouteObject(route: '/home', widget: HomePage());
  static final chartRoute = RouteObject(route: '/chart', widget: ChartPage());
  static final loginRoute = RouteObject(route: '/login', widget: LoginPage());
  static final settingsRoute = RouteObject(route: '/settings', widget: SettingsPage());
}

class RouteObject {
  final String route;
  final Widget widget;

  RouteObject({this.route, this.widget});
}