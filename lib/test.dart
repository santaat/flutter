import 'package:flutter/material.dart';


class Test extends StatelessWidget {
  const Test({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Stack(
          children: [
             Image.asset(
                  "asset/img/orange-circle.png",
                  width: 100,
                  height: 100,
                  ),
                
          ],
        ),
      ),
    );
  }
}