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

const List<Widget> navBarIcons = <Widget>[
  Icon(
    Icons.bookmark,
    color: Colors.white,
    size: 45,
  ),
  Padding(
    padding: EdgeInsets.all(10),
  ),
  Icon(
    Icons.home,
    color: Colors.white,
    size: 45,
  ),
  Padding(
    padding: EdgeInsets.all(10),
  ),
  Icon(
    Icons.settings,
    color: Colors.white,
    size: 45,
  ),
];

// ignore: non_constant_identifier_names
// List<BottomNavigationBarItem> NavBarIcons = navBarIcons.map((NavBar navBar) {
//   return BottomNavigationBarItem(
//       icon: Icon(navBar.icon),
//       backgroundColor: navBar.color,
//       label: navBar.label);
// }).toList();

class CustomBottomNavBar extends StatefulWidget {
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          bottom: 10,
          child: Container(
            width: size.width / 1.7,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              color: Color(0xFF232323),
            ),
            child: Row(
              children: navBarIcons,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
          ),
        )
      ],
    );
  }
}

// BottomNavigationBar(
//         type: BottomNavigationBarType.shifting,
//         backgroundColor: Color(0xFF6200EE),
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Colors.white.withOpacity(.60),
//         selectedFontSize: 14,
//         unselectedFontSize: 14,
//         items: navBarIcons.map((NavBar navBar) {
//           return BottomNavigationBarItem(
//               icon: Icon(navBar.icon),
//               backgroundColor: navBar.color,
//               label: navBar.label);
//         }).toList(),
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() => {_currentIndex = index, print(_currentIndex)});
//         },
//       ),
