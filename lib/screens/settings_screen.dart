import 'package:flutter/material.dart';
import 'package:mafcode/components/drawer.dart';

class SettingsScreen extends StatelessWidget {
  static const id = "settings_screen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("MafCode"),
        ),
        drawer: CustomDrawer(
          screenName: id,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text('settings'),
          ),
        ),
      ),
    );
  }
}
