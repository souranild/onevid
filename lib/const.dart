import 'package:flutter/material.dart';

const bgcolor = Color(0xFF000000);
const fgcolor = Colors.teal;
const mgcolor = Color(0xFF292929);
const iconColor = Color(0xFF607d8b);

class NavBar {
  const NavBar(this.label, this.icon, this.color);
  final String label;
  final IconData icon;
  final MaterialColor color;
}

const List<NavBar> navBarIcons = <NavBar>[
  NavBar('Library', Icons.library_books, Colors.teal),
  NavBar('Home', Icons.home, Colors.cyan),
  NavBar('Settings', Icons.settings, Colors.orange),
];

// ignore: non_constant_identifier_names
List<BottomNavigationBarItem> NavBarIcons = navBarIcons.map((NavBar navBar) {
  return BottomNavigationBarItem(
      icon: Icon(navBar.icon),
      backgroundColor: navBar.color,
      label: navBar.label);
}).toList();
