import 'package:flutter/material.dart';
import 'project.dart';
import 'Login.dart';
import 'list.dart';
class navi extends StatefulWidget {
  const navi({super.key});

  @override
  State<navi> createState() => _naviState();
}

class _naviState extends State<navi> {
  int _selectedIndex =0;

  List pages =[
    project(),
    login(),
    list(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>
        [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: "Login"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
            label: "Report",
          ),
        ],
        backgroundColor: Colors.yellowAccent,
      ),
    );
  }
}
