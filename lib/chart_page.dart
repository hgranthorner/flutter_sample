import 'package:flutter/material.dart';
import 'package:flutter_app/repositories/repository.dart';

import 'models/chart_with_title.dart';

class ChartPage extends StatefulWidget {
  @override
  _ChartPageState createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  List<ChartWithTitle> charts;
  int selectedIndex = 0;

  _ChartPageState() {
    var repository = Repository();
    charts = repository.getCharts();
  }

  void changeIndex(int num) {
    var newIndex = selectedIndex + num;
    if (newIndex < 0) {
      newIndex = charts.length - 1;
    }
    if (newIndex > charts.length - 1) {
      newIndex = 0;
    }
    setState(() {
      selectedIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(charts[selectedIndex].title),
        ),
        body: Row(
          children: <Widget>[
            Container(
              child: RaisedButton(
                onPressed: () => this.changeIndex(-1),
                child: Text('<'),
              ),
              width: size.width * .09,
            ),
            Container(
              child: charts[selectedIndex].widget,
              width: size.width * .8,
            ),
            Container(
              child: RaisedButton(
                onPressed: () => this.changeIndex(1),
                child: Text('>'),
              ),
              width: size.width * .09,
            )
          ],
        ));
  }
}
