import 'package:flutter/material.dart';

class HospitalTile extends StatelessWidget {
  final String name;
  final String location;
  final String distance;
  HospitalTile({this.name , this.distance , this.location});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Column(
        children: <Widget>[
          Text(location),
          Text(distance)
        ],
      ),
    );
  }
}
