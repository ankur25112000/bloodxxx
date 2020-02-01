import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class HospitalTile extends StatelessWidget {
  final String name;
  final String location;
final String phone;
HospitalTile({this.name, this.phone, this.location});

callPhone(String phoneee) async {
    int phonee = int.parse(phoneee);
  var url = 'tel: {$phonee}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
  bookAppointment() async{
    /* ... */
  }
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
                  onPressed: ()=>callPhone(phone),
                ),
                FlatButton(
                  child:  Text('Book Appointment' , style: TextStyle(fontSize: 18.0),),
                  onPressed: () {Alert(
                    context: context,
                    type: AlertType.warning,
                    title: "Confirm",
                    desc: "Have You Verified Your Details",
                    buttons: [
                      DialogButton(
                        child: Text(
                          "Accept",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: (){},
                        color: Color.fromRGBO(0, 179, 134, 1.0),
                      ),
                      DialogButton(
                        child: Text(
                          "Decline",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () => Navigator.pop(context),
                        gradient: LinearGradient(colors: [
                          Color.fromRGBO(116, 116, 191, 1.0),
                          Color.fromRGBO(52, 138, 199, 1.0)
                        ]),
                      )
                    ],
                  ).show();},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

}