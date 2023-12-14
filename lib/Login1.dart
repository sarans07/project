import 'package:flutter/material.dart';
import 'package:saranproject/color.dart';
class login1 extends StatefulWidget {
  const login1({super.key});

  @override
  State<login1> createState() => _login1State();
}

class _login1State extends State<login1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(child: Text('மனித',
            style: TextStyle(
              fontSize: 40,fontFamily: "Oi-Regular"
            ),
          ),
          ),
          Center(child: Text('மனித',
            style: TextStyle(
                fontSize: 40

            ),
          ),
          ),
          Center(child: Text('மனித',
            style: TextStyle(
                fontSize: 40
            ),
          ),
          ),
          RotatedBox(
              quarterTurns: 4,
            child: Icon(Icons.facebook,size: 40,),
          ),
        ],
      )
    );
  }
}
