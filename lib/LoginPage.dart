import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Column(
        children: <Widget>[
          Form(
            child: TextFormField(
              validator: (value) =>
                  value.isEmpty ? 'Please enter some text' : null,
              decoration: InputDecoration(labelText: 'Email'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: RaisedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, Routes.homeRoute.route, (r) => false);
              },
              child: Text('Login'),
            ),
          )
        ],
      ),
    );
  }
}
