import 'package:flutter/material.dart';
import 'package:onevid/widgets/bottomnavbar.dart';

final List<Widget> settings = [
  ListTile(
    leading: Icon(Icons.settings),
    title: Text('General'),
    trailing: Icon(Icons.keyboard_arrow_down),
  ),
  ListTile(
    leading: Icon(Icons.list),
    title: Text('Services'),
    trailing: Icon(Icons.keyboard_arrow_down),
  ),
  ListTile(
    leading: Icon(Icons.info),
    title: Text('About'),
    trailing: Icon(Icons.keyboard_arrow_down),
  ),
];

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          child: Center(
            child: ListView(
              children: settings,
            ),
          ),
        ),
      ),
    );
  }
}
