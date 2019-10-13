import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/home_page_list_item.dart';
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
        child: ListView(
            children: repository
                .getCharts()
                .asMap()
                .map((index, chart) => MapEntry(
                    index,
                    HomePageListItem(
                      chart: chart,
                      index: index,
                    )))
                .values
                .toList()),
      ),
    );
  }
}
