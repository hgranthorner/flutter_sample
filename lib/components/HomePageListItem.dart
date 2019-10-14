import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ChartPage.dart';
import 'package:flutter_app/models/ChartWithTitle.dart';

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
            child: Text(
              'View Chart',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChartPage(
                            selectedIndex: index,
                          )));
            },
            color: Colors.blue,
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
