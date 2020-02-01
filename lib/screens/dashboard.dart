import 'package:flutter/material.dart';
import 'package:bloodx/widgets/app_bar.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: <Widget>[
          AppBarr(),
        ]));
  }
}
