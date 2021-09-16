import 'package:flutter/material.dart'; //hello
import 'package:work2/config/constant.dart';
import 'package:work2/screen/login.dart';
import 'package:work2/screen/regis.dart';
import 'screen/home.dart';
import 'test.dart';

void main() => runApp(KMUTNB());

class KMUTNB extends StatelessWidget {
  const KMUTNB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Register(),
        routes: {
          'Login': (context) => Login(),
          'Register': (context) => Register(),
        },
        theme: ThemeData(
          primaryColor: pColor,
          secondaryHeaderColor: sColor,
          backgroundColor: bgColor,
        ));
  }
}
