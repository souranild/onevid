import 'package:flutter/material.dart';
import 'package:onevid/const.dart';

class LibraryPage extends StatefulWidget {
  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
