import 'package:flutter/material.dart';
import 'package:onevid/screens/home.dart';
import 'package:onevid/screens/library.dart';
import 'package:onevid/screens/settings.dart';
import 'package:onevid/widgets/bottomnavbar.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: BottomNavBar(),
      initialRoute: '/',
      routes: {
        '/home': (context) => HomePage(),
        '/settings': (context) => SettingsPage(),
        '/library': (context) => LibraryPage(),
      },
    );
  }
}
