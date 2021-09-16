import 'package:flutter/material.dart';

class HOME extends StatelessWidget {
  const HOME({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          
          children: <Widget>[
            Positioned(
              top: -80,
              left: -90,
                child: Image.asset(
                "asset/img/orange-circle.png",
                width: size.width*0.5,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                
                SizedBox( height: 20,),
                Image.asset(
                  "asset/img/logo_kmutnb.png",
                  width: size.width*0.5,
                  height: size.height*0.3,
                  ),
                
                Text(
                  "Welcome to KMUTNB.",
                    style: TextStyle(
                    fontSize: 35,
                    color: Colors.redAccent,
                  ),
                ),

                Image.asset(
                  "asset/img/undraw_our_neighborhood_ya1h.png",
                  width: size.width,
                  height: size.height*0.3,
                  ),

                SizedBox( height: 50,
                ),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                      fontSize: 25, 
                    ),
                    primary: Colors.red[200],
                    padding:  EdgeInsets.fromLTRB(120, 20, 120, 20),
                    
                    shape: StadiumBorder(),
                  ),child: const Text("Login"),
                  onPressed:(){ 
                    print("Login");
                    Navigator.pushNamed(context, 'Login');
                    },
                ),

                SizedBox( height: 25,
                ),
                
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    
                    textStyle: TextStyle(
                      fontSize: 25, 
                    ),
                    primary: Colors.redAccent,
                    padding:  EdgeInsets.fromLTRB(110, 20, 110, 20),
                    shape: StadiumBorder(),
                  ),child: const Text("SIGN UP"),
                  onPressed:(){
                    print("Click me");
                    Navigator.pushNamed(context, 'Register');   
                  }
                ),
                
              ],
            ),
          ],
        )
      ),
    );
  }
}
