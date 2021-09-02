import 'package:flutter/material.dart';

class Registor extends StatefulWidget {
  const Registor({ Key? key }) : super(key: key);

  @override
  _RegistorState createState() => _RegistorState();
}

class _RegistorState extends State<Registor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Registor'),
        ),
      body: Text('Registor'),
    );
  }
}