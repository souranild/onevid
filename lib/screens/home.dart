import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:onevid/const.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex;
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
                icon: Icon(
                  IconData(
                    0xe5d2,
                  ),
                  color: Colors.white,
                  size: 15,
                ),
              )),
            ),
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
      bottomNavigationBar: buildNavBar(),
    );
  }
}
