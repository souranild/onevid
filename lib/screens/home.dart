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
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
                margin: EdgeInsets.fromLTRB(15, 15, 15, 0),
                color: Color(0xFF1F1F1F),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    fillColor: Colors.white70,
                    prefixIcon: Icon(Icons.search),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      borderSide: BorderSide(color: Colors.green, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.green, width: 2),
                    ),
                  ),
                )),
          ),
          Expanded(
              flex: 5,
              child: Container(
                color: bgcolor,
              )),
          Expanded(
              flex: 5,
              child: Container(
                color: bgcolor,
              ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
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
