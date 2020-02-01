import 'dart:io';

import 'package:bloodx/widgets/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:bloodx/widgets/tile.dart';
import 'package:bloodx/models/Hospitals.dart';
import 'package:loading_animations/loading_animations.dart';

bool loading = true;

class DonateHScreen extends StatefulWidget {
  Hospital hospital = Hospital();
  List<Hospital> hospitalsList = [
    Hospital(
        name: 'Rajendra Hospital',
        location: "Lella Bhavan",
        phone: '+917009346266'),
    Hospital(
        name: 'Amar Hospital',
        location: "Lella Bhavan",
        phone: '+917009346266'),
    Hospital(
        name: 'Columbia Asia Hospital',
        location: "Income Tax Office Road",
        phone: '+917009346266'),
    Hospital(
        name: 'Mehar Hospital Patiala',
        location: "Facotry Area",
        phone: '+917009346266'),
    Hospital(
        name: 'Preet Hospital',
        location: "Bhupindra Road",
        phone: '+917009346266'),
  ];
  @override
  _DonateHScreenState createState() => _DonateHScreenState();
}

class _DonateHScreenState extends State<DonateHScreen> {
  Future<String> _calculation = Future<String>.delayed(
    Duration(seconds: 2),
    () => 'Data Loaded',
  );

  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: _calculation, // a previously-obtained Future<String> or null
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        List<Widget> children;

        if (snapshot.hasData) {
          children = <Widget>[
            AppBarr(),
            Flexible(
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: widget.hospitalsList.length,
                  itemBuilder: (context, index) {
                    return HospitalTile(
                      phone: widget.hospitalsList[index].phone,
                      location: widget.hospitalsList[index].location,
                      name: widget.hospitalsList[index].name,
                    );
                  }),
            )
          ];
        } else if (snapshot.hasError) {
          children = <Widget>[
            AppBarr(),
            Flexible(
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: widget.hospitalsList.length,
                  itemBuilder: (context, index) {
                    return HospitalTile(
                      phone: widget.hospitalsList[index].phone,
                      location: widget.hospitalsList[index].location,
                      name: widget.hospitalsList[index].name,
                    );
                  }),
            )
          ];
        } else {
          children = <Widget>[
            AppBarr(),
            SizedBox(
              child: LoadingFadingLine.circle(),
              width: 60,
              height: 60,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text('Awaiting result...'),
            )
          ];
        }
        return Scaffold(
          body: Column(
                  children: children,
                ),
        );
      },
    );
  }
}
