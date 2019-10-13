import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/chart_page.dart';
import 'package:flutter_app/models/chart_with_title.dart';


class HomePageListItem extends StatelessWidget {
  final ChartWithTitle chart;
  final int index;

  HomePageListItem({this.chart, this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            chart.title,
            style: TextStyle(fontSize: 24),
          ),
          RaisedButton(
            child: Text('View Chart'),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChartPage(
                        selectedIndex: index,
                      )));
            },
          ),
        ],
      ),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black54, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * .8,
    );
  }

}