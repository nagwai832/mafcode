import 'package:flutter/material.dart';
import 'package:mafcode/components/drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';



class HomeScreen extends StatefulWidget {
  static const id = "home_screen";

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _auth = FirebaseAuth.instance;
  FirebaseUser loggedInUser;

  @override
  void initState() {
    super.initState();

    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        loggedInUser = user;
      }
    } catch (e) {
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("MafCode"),
        ),
        drawer: CustomDrawer(
          screenName: HomeScreen.id,
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
