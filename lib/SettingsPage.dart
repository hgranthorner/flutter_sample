import 'package:flutter/material.dart';
import 'package:flutter_app/components/AppDrawer.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        centerTitle: true,
      ),
      drawer: AppDrawer(),
      body: Center(
        child: Text('Settings'),
      ),
    );
  }
}
