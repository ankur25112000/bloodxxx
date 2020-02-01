import 'package:bloodx/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:bloodx/widgets/tile.dart';

class DonateHScreen extends StatefulWidget {
  @override
  _DonateHScreenState createState() => _DonateHScreenState();
}

class _DonateHScreenState extends State<DonateHScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          AppBarr(),
          HospitalTile(
            name: "Rajinder Hospital",
            distance: "10",
            location: "Lella Bhavan",

          )

        ],
      ),
    );
  }
}
