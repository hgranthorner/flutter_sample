import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/AppDrawer.dart';
import 'package:flutter_app/components/HomePageListItem.dart';
import 'package:flutter_app/inherited/Provider.dart';
import 'package:flutter_app/managers/UserManager.dart';
import 'package:flutter_app/repositories/Repository.dart';

class HomePage extends StatelessWidget {
  final Repository _repository = Repository();

  @override
  Widget build(BuildContext context) {
    final userManager = Provider.of<UserManager>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: StreamBuilder<String>(
            stream: userManager.userName,
            builder: (context, snapshot) =>
                Text('Welcome ${snapshot.data}' ?? 'Home Page')),
      ),
      body: Center(
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) => HomePageListItem(
            chart: _repository.getCharts()[index],
            index: index,
          ),
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemCount: _repository.getCharts().length,
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}

