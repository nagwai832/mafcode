import 'package:flutter/material.dart';
import 'package:mafcode/screens/map_screen.dart';
import 'package:mafcode/screens/settings_screen.dart';
import 'package:mafcode/screens/submit_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.blue[200])),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        SubmitScreen.id: (context) => SubmitScreen(),
        MapScreen.id: (context) => MapScreen(),
        SettingsScreen.id: (context) => SettingsScreen()
      },
    );
  }
}
