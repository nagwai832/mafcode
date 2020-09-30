import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:mafcode/screens/home_screen.dart';
import 'package:mafcode/screens/map_screen.dart';
import 'package:mafcode/screens/settings_screen.dart';
import 'package:mafcode/screens/submit_screen.dart';
import 'package:mafcode/screens/welcome_page.dart';

class CustomDrawer extends StatefulWidget {

  final String screenName;
  const CustomDrawer({
    Key key,
    this.screenName,
  }) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Drawer',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            onTap: () => widget.screenName == HomeScreen.id
                ? Navigator.pop(context)
                : Navigator.popAndPushNamed(context, HomeScreen.id),
          ),
          ListTile(
            leading: Icon(Icons.add_a_photo),
            title: Text('Submit a Photo'),
            onTap: () => widget.screenName == SubmitScreen.id
                ? Navigator.pop(context)
                : Navigator.popAndPushNamed(context, SubmitScreen.id),
          ),
          ListTile(
            leading: Icon(Icons.map),
            title: Text('Live Map'),
            onTap: () => widget.screenName == MapScreen.id
                ? Navigator.pop(context)
                : Navigator.popAndPushNamed(context, MapScreen.id),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => widget.screenName == SettingsScreen.id
                ? Navigator.pop(context)
                : Navigator.popAndPushNamed(context, SettingsScreen.id),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log Out'),
            onTap: (){
              _auth.signOut();
              Navigator.pushNamed(context, WelcomeScreen.id);
            }
          ),
        ],
      ),
    );
  }
}
