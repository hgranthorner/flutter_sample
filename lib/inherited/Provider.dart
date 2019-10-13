
import 'package:flutter/material.dart';

class Provider<T> extends InheritedWidget {
  final T data;

  Provider({Key key, Widget child, this.data}) : super(key: key, child: child);

  static T of<T>(BuildContext context) {
    final type = _typeof<Provider<T>>();
    return (context.inheritFromWidgetOfExactType(type) as Provider).data;
  }

  static Type _typeof<T>() => T;

  @override
  bool updateShouldNotify(Provider oldWidget) {
    return false;
  }
}
