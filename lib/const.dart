import 'package:flutter/material.dart';

const bgcolor = Color(0xFF000000);
const fgcolor = Colors.teal;
const mgcolor = Color(0xFF292929);
const inactiveIconColor = Color(0xFF607d8b);
const activeIconColor = Colors.white;

int currindex = 1;

class CustomBottomNavBar extends StatefulWidget {
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.bottomCenter,
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
              children: [
                IconButton(
                  padding: EdgeInsets.only(bottom: 4),
                  icon: Icon(
                    Icons.bookmark,
                    color: currindex == 0 ? activeIconColor : inactiveIconColor,
                    size: 35,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/library');
                    setState(() {
                      currindex = 0;
                    });
                  },
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                IconButton(
                  padding: EdgeInsets.only(bottom: 4),
                  icon: Icon(
                    Icons.home,
                    color: currindex == 1 ? activeIconColor : inactiveIconColor,
                    size: 35,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                    setState(() {
                      currindex = 1;
                    });
                  },
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                IconButton(
                  padding: EdgeInsets.only(bottom: 4),
                  icon: Icon(
                    Icons.settings,
                    color: currindex == 2 ? activeIconColor : inactiveIconColor,
                    size: 35,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/settings');
                    setState(() {
                      currindex = 2;
                    });
                  },
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
          ),
        )
      ],
    );
  }
}

// var NavBarNavigator = Navigator(
//   onGenerateInitialRoutes: (RouteSettings settings) {
//     return MaterialPageRoute(
//         settings: settings,
//         builder: (BuildContext context) {
//           switch (settings.name) {
//             case '/':
//               return Home();
//             case '/settings':
//               return SettingsPage();
//             case '/library':
//               return LibraryPage();
//           }
//         });
//   },
// );

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
