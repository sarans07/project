import 'package:flutter/material.dart';
class adb extends StatefulWidget {
  const adb({super.key});

  @override
  State<adb> createState() => _adbState();
}

class _adbState extends State<adb> {
  TextEditingController c = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        children: [
          TextField(
            controller: c,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(onPressed: (){
              showDialog(
                  context: context,
                  builder: (context){
                    return AlertDialog(
                      content: Text(c.text),
                    );
              },
              );
            },

            child: Text("Enter"),),
          )
        ],
      ),
    );
  }
}
