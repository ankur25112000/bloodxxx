import 'package:flutter/material.dart';
import 'package:bloodx/screens/login.dart';
import 'package:bloodx/screens/dashboard.dart';
import 'package:bloodx/screens/signin.dart';
import 'package:bloodx/screens/donate_form.dart';
import 'package:bloodx/screens/hospital_donate.dart';
import 'package:bloodx/screens/recieve_blood.dart';
import 'package:bloodx/screens/hospital_recieve.dart';
void main() => runApp(bloodx());
class bloodx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        '/' :(context) => LoginScreen(),
        '/signup' :(context) => SignupScreen(),
        '/dashboard' :(context) => DashboardScreen(),
        '/donate' :(context) => DonateScreen(),
        '/donate_hospital' :(context) => DonateHScreen(),
        '/recieve' :(context) => RecieveScreen(),
        '/recieve_hospital' :(context) => RecieveHScreen(),
      } ,
    );
  }
}


