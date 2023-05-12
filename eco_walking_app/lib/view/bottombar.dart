import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Center(
          child: Text(
            'Placeholder content',
            style: TextStyle(fontSize: 24.0),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.redeem),
            label: 'Récompense',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions),
            label: 'Trajet',
          ),
        ],
      ),
    );
  }
}
