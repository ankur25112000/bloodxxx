import 'package:flutter/material.dart';

class HospitalTile extends StatelessWidget {
  final String name;
  final String location;
  final String distance;
  HospitalTile({this.name, this.distance, this.location});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.local_hospital,
                size: 80,
              ),
              title: Text(
                name,
                style: TextStyle(fontSize: 25.0),
              ),
              subtitle: Row(
                children: <Widget>[
                  Icon(Icons.location_on),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    location,
                    style: TextStyle(color: Colors.blueGrey, fontSize: 15.0),
                  )
                ],
              ),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child:  Text('Call' , style: TextStyle(fontSize: 18.0),),
                  onPressed: () {/* ... */},
                ),
                FlatButton(
                  child:  Text('Book Appointment' , style: TextStyle(fontSize: 18.0),),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}