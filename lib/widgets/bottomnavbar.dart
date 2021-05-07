import 'package:flutter/material.dart';
import 'package:onevid/const.dart';
import 'package:onevid/screens/home.dart';
import 'package:onevid/screens/library.dart';
import 'package:onevid/screens/settings.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 1;

  List<Widget> _pages = [LibraryPage(), HomePage(), SettingsPage()];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[_currentIndex],
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.shifting,
          currentIndex: _currentIndex,
          selectedItemColor: activeIconColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: inactiveIconColor,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              backgroundColor: Color(0xFF232323),
              label: 'Library',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Color(0xFF232323),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              backgroundColor: Color(0xFF232323),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
