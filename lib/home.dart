import 'package:flutter/material.dart';
import 'package:saranproject/Insta.dart';
import 'package:saranproject/amazon.dart';
import 'package:saranproject/spotify.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int _selectedIndex = 0;
  List pages = [
    amazon(),
    spotify(),
    insta(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_email),
            label: 'Amazon',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Spotify',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Insta',
          ),
        ],
      ),
    );
  }
}
