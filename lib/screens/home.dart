import 'package:flutter/material.dart';
import 'package:onevid/const.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

// final Size size = MediaQuery.of(context).size;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                height: size.height / 10,
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
        bottomNavigationBar: CustomBottomNavBar(),
      ),
    );
  }
}
