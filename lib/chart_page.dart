
import 'package:flutter/material.dart';

import 'charts/simple_chart.dart';
import 'charts/simple_time_series.dart';
import 'charts/stacked_line_chart.dart';
import 'models/chart_with_title.dart';

class ChartPage extends StatefulWidget {
  @override
  _ChartPageState createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  List<ChartWithTitle> charts = [
    ChartWithTitle(
        widget: SimpleBarChart.withSampleData(), title: 'Simple Bar Chart'),
    ChartWithTitle(
      widget: SimpleTimeSeriesChart.withSampleData(),
      title: 'Simple Time Series',
    ),
    ChartWithTitle(
      widget: StackedAreaLineChart.withSampleData(),
      title: 'Stacked Area Line Chart',
    )
  ];

  int selectedIndex = 0;

  void changeIndex(int num) {
    var newIndex = selectedIndex + num;
    print('New index before: ' + newIndex.toString());
    if (newIndex < 0) {
      newIndex = charts.length - 1;
    }
    if (newIndex > charts.length - 1) {
      newIndex = 0;
    }
    print('New index after: ' + newIndex.toString());
    setState(() {
      selectedIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text(charts[selectedIndex].title)),
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