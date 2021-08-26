import 'package:flutter/material.dart';
import 'home.dart';
import 'test.dart';
void main()=>  runApp(KMUTNB());

class KMUTNB extends StatelessWidget {
  const KMUTNB({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HOME(),
    );
  }
}
