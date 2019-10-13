import 'package:flutter/material.dart';
import 'package:flutter_app/Routes.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeName = ModalRoute.of(context).settings.name;
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text('hhorner@s1inc.com'),
            accountName: Text('Grant Horner'),
            currentAccountPicture: CircleAvatar(),
            otherAccountsPictures: <Widget>[
              GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Adding new account...'),
                      ));
                },
                child: CircleAvatar(
                  child: Icon(Icons.add),
                ),
              ),
            ],
          ),
          GestureDetector(
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            onTap: () {
              final homeRoute = Routes.homeRoute.route;
              if (routeName != homeRoute) {
                Navigator.pushNamed(context, homeRoute);
              }
            },
          ),
          ListTile(
            leading: Icon(Icons.insert_chart),
            title: Text('Charts'),
          ),
          Divider(),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: GestureDetector(
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
                onTap: () {
                  final settingsRoute = Routes.settingsRoute.route;
                  if (routeName != settingsRoute) {
                    Navigator.pushNamed(context, settingsRoute);
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
