import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:bloodx/widgets/app_bar.dart';
import 'package:bloodx/models/userData.dart';
import 'package:http/http.dart' as http ;
class DonateScreen extends StatefulWidget {
  @override
  _DonateScreenState createState() => _DonateScreenState();
}

class _DonateScreenState extends State<DonateScreen> {
  UserData userdata = new UserData();
  String firstName;
  String lastName;
  String bloodGroup;
  String gender;
  String lastDonated;
  String address;
  int age;
  String disease;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            AppBarr(),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        child: Text(
                          "First Name",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        child: TextField(
                          onChanged: (first) {
                            firstName = first;
                          },
                          autofocus: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hoverColor: Colors.red,
                            contentPadding: EdgeInsets.only(bottom: 5.5),
                            border: OutlineInputBorder(
                              // borderSide: new BorderSide(),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                        width: 100.0,
                        height: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Text(
                          "Last Name",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        child: TextField(
                          onChanged: (last) {
                            lastName = last;
                          },
                          autofocus: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hoverColor: Colors.red,
                            contentPadding: EdgeInsets.only(bottom: 5.5),
                            border: OutlineInputBorder(
                              // borderSide: new BorderSide(),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                        width: 100.0,
                        height: 40,

                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        child: Text(
                          "Blood group",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        child: TextField(
                          onChanged: (bg) {
                            bloodGroup = bg;
                          },
                          autofocus: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hoverColor: Colors.red,
                            contentPadding: EdgeInsets.only(bottom: 5.5),
                            border: OutlineInputBorder(
                              // borderSide: new BorderSide(),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                        width: 100.0,
                        height: 40,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        child: Text(
                          "Gender",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 35),
                      Container(
                        child: TextField(
                          onChanged: (gende) {
                            gender = gende;
                          },
                          autofocus: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hoverColor: Colors.red,
                            contentPadding: EdgeInsets.only(bottom: 5.5),
                            border: OutlineInputBorder(
                              // borderSide: new BorderSide(),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                        width: 100.0,
                        height: 40,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        child: Text(
                          "Age",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 55),
                      Container(
                        child: TextField(

                          onChanged: (agee) {
                            age = int.parse(agee);
                          },
                          keyboardType: TextInputType.number,
                          autofocus: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hoverColor: Colors.red,
                            contentPadding: EdgeInsets.only(bottom: 5.5),
                            border: OutlineInputBorder(
                              // borderSide: new BorderSide(),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                        width: 100.0,
                        height: 40,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        child: Text(
                          "Address",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(width: 27),
                      Container(
                        child: TextField(
                          onChanged: (addr) {
                            address = addr;
                          },
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hoverColor: Colors.red,
                            contentPadding: EdgeInsets.only(bottom: 5.5),
                            border: OutlineInputBorder(
                              // borderSide: new BorderSide(),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                        width: 275.0,
                        height: 40,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        child: Text(
                          "Last blood donated",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Text("(weeks ago)"),
                      ),
                      SizedBox(width: 27),
                      Container(
                        child: TextField(
                          onChanged: (donate) {
                            lastDonated = donate;
                          },
                          keyboardType: TextInputType.number,
                          autofocus: true,
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            hoverColor: Colors.red,
                            contentPadding: EdgeInsets.only(bottom: 5.5),
                            border: OutlineInputBorder(
                              // borderSide: new BorderSide(),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                        width: 100.0,
                        height: 40,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      Text("Any alergy or blood related disease you have?"),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: TextField(
                      onChanged: (dd) {
                        disease = dd;
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        hoverColor: Colors.red,
                        contentPadding: EdgeInsets.only(bottom: 5.5),
                        border: OutlineInputBorder(
                          // borderSide: new BorderSide(),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    width: 500,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                            color: Color(0xffff3a5a)),
                        child: FlatButton(
                          child: Text(
                            "Submit",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                          onPressed: () async {
//                            Map<String, dynamic> maps = {
//                              "firstname": firstName,
//                              "lastname": lastName,
//                              "bloodgroup": bloodGroup,
//                              "age": age,
//                              "gender": gender,
//                              "address": address,
//                              "last_blood_donated": lastDonated,
//                              "health_problems": disease
//                            };
//                            String json = jsonEncode(maps);
//                            http.Response response = await http.post('https://mothermary.free.beeceptor.com', body: maps
//                            );
//                            print(response.statusCode);
//                            print(response.body);
                            Navigator.pushNamed((context), '/donate_hospital');
                          },
                        ),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}




