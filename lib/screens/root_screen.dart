import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import './home_screen.dart';

class RootScreen extends StatefulWidget {
  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  var _selectedIndex = 0;

  final List<Widget> _screenList = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screenList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.homeOutline),
            title: Text('Home')
          ),
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.searchOutline),
            title: Text('Explore')
          ),
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.bookOpenOutline),
            title: Text('Story')
          ),
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.bellOutline),
            title: Text('Notification')
          ),
          BottomNavigationBarItem(
            icon: Icon(EvaIcons.personOutline),
            title: Text('Profile')
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
