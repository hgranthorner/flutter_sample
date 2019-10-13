import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/chart_page.dart';
import 'package:flutter_app/repositories/repository.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var repository = Repository();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: repository.getCharts().map((chart) =>
              RaisedButton(
                child: Text(chart.title),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChartPage()));
                },
              )).toList(),
        ),
      ),
    );
  }
}
