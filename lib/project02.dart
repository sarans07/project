import 'package:flutter/material.dart';


class facebook extends StatelessWidget {
  const facebook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.dashboard),
        title: Center(child: Text("Home")),
        actions: [
          Icon(Icons.search)
        ],
        backgroundColor: Colors.yellow
      ),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
