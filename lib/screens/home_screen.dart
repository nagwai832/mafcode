import 'package:flutter/material.dart';
import 'package:mafcode/components/drawer.dart';

class HomeScreen extends StatelessWidget {
  static const id = "home_screen";
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
            child: Text('dashboard'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.linked_camera,
            size: 40,
          ),
        ),
      ),
    );
  }
}

// print('TestWidget: ${ModalRoute.of(context).isCurrent}');
// print("context.widget.toStringShort: ${context.widget.toStringShort()}");
