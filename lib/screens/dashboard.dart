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
          Center(
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed((context), '/donate');
                  },
                  child: Container(
                      height: 100.0,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          'Donate Blood',
                          style: TextStyle(color: Colors.white, fontSize: 30.0),
                        ),
                      )),
                ),
                SizedBox(
                  height:60,
                ),
            GestureDetector(

              child: GestureDetector(
                onTap: (){
                  Navigator.pushNamed((context), '/recieve');
                },
                child: Container(
                    height: 100.0,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        'Recieve Blood',
                        style: TextStyle(color: Colors.white, fontSize: 30.0),
                      ),
                    )),
              ),
            ),
              ],
            ),
          ),
        ]));
  }
}
