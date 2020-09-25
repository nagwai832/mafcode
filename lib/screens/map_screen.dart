import 'package:flutter/material.dart';
import 'package:mafcode/components/drawer.dart';

class MapScreen extends StatelessWidget {
  static const id = "map_screen";
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
            child: Text('map'),
          ),
        ),
      ),
    );
  }
}
