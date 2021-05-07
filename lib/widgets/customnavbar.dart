import 'package:flutter/material.dart';

import 'package:onevid/screens/home.dart';
import 'package:onevid/screens/library.dart';
import 'package:onevid/screens/settings.dart';
import '../const.dart';

class CustomBottomNavBar extends StatefulWidget {
  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    int currindex = 1;

    var size = MediaQuery.of(context).size;

    final List<Widget> pages = [
      LibraryPage(),
      HomePage(),
      SettingsPage(),
    ];

    return Scaffold(
      body: pages[currindex],
      bottomNavigationBar: Stack(
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
                      color:
                          currindex == 0 ? activeIconColor : inactiveIconColor,
                      size: 35,
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/library');
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
                      color:
                          currindex == 1 ? activeIconColor : inactiveIconColor,
                      size: 35,
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home');
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
                      color:
                          currindex == 2 ? activeIconColor : inactiveIconColor,
                      size: 35,
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/settings');
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
      ),
    );
  }
}
