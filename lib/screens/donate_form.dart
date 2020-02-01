import 'package:flutter/material.dart';
import 'package:bloodx/widgets/app_bar.dart';

class DonateScreen extends StatefulWidget {
  @override
  _DonateScreenState createState() => _DonateScreenState();
}

class _DonateScreenState extends State<DonateScreen> {
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
                    height: 500,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
