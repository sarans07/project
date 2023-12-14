import 'package:flutter/material.dart';
import 'package:saranproject/Login.dart';
import 'package:saranproject/amazon.dart';
import 'package:saranproject/project.dart';
class amn extends StatefulWidget {
  const amn({super.key});

  @override
  State<amn> createState() => _amnState();
}

class _amnState extends State<amn> {
  int _selectedIndex =0;
  List pages =[
    login(),
    amazon(),
    project(),
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
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: "Login"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.next_plan),
          label: "Home"
          ),
        ],
      ),
    );
  }
}
