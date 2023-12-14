import 'package:flutter/material.dart';
class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
                    borderRadius: BorderRadius.circular(50),
              ),
              child: Icon(Icons.arrow_back_ios_new)),
        ),
        title: Center(child: Text("Reports")),
        backgroundColor: Colors.grey,
      ),
      body:
      Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text("Reports :",
            style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 30,
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              tileColor: Colors.blueAccent,
              leading: Icon(Icons.person),
              title: Center(child: Text("Report 1")),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              tileColor: Colors.deepOrange,
              leading: Icon(Icons.person),
              title: Center(child: Text("Report 2")),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              tileColor: Colors.lime,
              leading: Icon(Icons.person),
              title: Center(child: Text("Report 3")),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          ElevatedButton(onPressed: (){}, child: Text("Ok"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.deepOrange)
          ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text("Help :",
              style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ListTile(
              tileColor: Colors.yellow,
              leading: Icon(Icons.person_pin_outlined),
              title: Center(child: Text("Logout")),
              trailing: Icon(Icons.logout),
            ),
          ),
        ],
      ),
    );
  }
}
