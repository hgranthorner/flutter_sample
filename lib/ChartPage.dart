import 'package:flutter/material.dart';
import 'package:flutter_app/repositories/Repository.dart';

import 'models/ChartWithTitle.dart';

class ChartPage extends StatefulWidget {
  final int selectedIndex;

  ChartPage({Key key, this.selectedIndex}) : super(key: key);

  @override
  _ChartPageState createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  List<ChartWithTitle> charts;
  int _currentIndex;

  _ChartPageState() {
    var repository = Repository();
    charts = repository.getCharts();
  }

  void changeIndex(int num) {
    var newIndex = _currentIndex + num;
    if (newIndex < 0) {
      newIndex = charts.length - 1;
    }
    if (newIndex > charts.length - 1) {
      newIndex = 0;
    }
    setState(() {
      _currentIndex = newIndex;
    });
  }

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(charts[_currentIndex].title),
        ),
        body: Row(
          children: <Widget>[
            Container(
              child: RaisedButton(
                onPressed: () => this.changeIndex(-1),
                child: Text('<'),
              ),
              width: size.width * .1,
            ),
            Container(
              child: charts[_currentIndex].widget,
              width: size.width * .8,
            ),
            Container(
              child: RaisedButton(
                onPressed: () => this.changeIndex(1),
                child: Text('>'),
              ),
              width: size.width * .1,
            )
          ],
        ));
  }
}
