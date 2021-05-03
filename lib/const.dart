import 'package:flutter/material.dart';

const bgcolor = Color(0xFF000000);
const fgcolor = Colors.teal;
const mgcolor = Color(0xFF292929);
const iconColor = Color(0xFF607d8b);

class NavBar {
  const NavBar(this.title, this.icon, this.color);
  final String title;
  final IconData icon;
  final MaterialColor color;
}

const List<NavBar> navBarIcons = <NavBar>[
  NavBar('Library', Icons.library_books, Colors.teal),
  NavBar('Home', Icons.home, Colors.cyan),
  NavBar('Settings', Icons.settings, Colors.orange),
];

BottomNavigationBar buildNavBar() {
  return BottomNavigationBar(
    // onTap: (int index) {
    //   setState(() {
    //     _currentIndex = index;
    //   });
    // },
    items: navBarIcons.map((NavBar navBar) {
      return BottomNavigationBarItem(
          icon: Icon(navBar.icon),
          backgroundColor: navBar.color,
          title: Text(navBar.title));
    }).toList(),
  );
}
