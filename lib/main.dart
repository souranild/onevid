import 'package:flutter/material.dart';
import 'package:onevid/screens/library.dart';
import 'package:onevid/screens/settings.dart';
import 'screens/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Home Page",
      home: HomePage(),
      initialRoute: '/',
      routes: {
        '/settings': (context) => SettingsPage(),
        '/library': (context) => LibraryPage()
      },
    );
  }
}
