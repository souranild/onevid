import 'package:flutter/material.dart';
import 'package:onevid/const.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

int _currentIndex = 0;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                height: 50,
                margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
                color: Color(0xFF1F1F1F),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    fillColor: Colors.white70,
                    prefixIcon: Icon(Icons.menu),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.blue, width: 2),
                    ),
                  ),
                )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColor: Color(0xFF6200EE),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: navBarIcons.map((NavBar navBar) {
          return BottomNavigationBarItem(
              icon: Icon(navBar.icon),
              backgroundColor: navBar.color,
              label: navBar.label);
        }).toList(),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() => {_currentIndex = index, print(_currentIndex)});
        },
      ),
    );
  }
}
