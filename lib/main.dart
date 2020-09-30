import 'package:flutter/material.dart';
import 'package:mafcode/screens/map_screen.dart';
import 'package:mafcode/screens/settings_screen.dart';
import 'package:mafcode/screens/submit_screen.dart';
import 'package:mafcode/screens/welcome_page.dart';
import 'screens/forget_password.dart';
import 'screens/forget_password.dart';
import 'screens/home_screen.dart';
import 'package:mafcode/screens/login.dart';
import 'package:mafcode/screens/sign_up.dart';
import 'package:mafcode/screens/forget_password.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const id = "welcome_page";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.blue[200])),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id : (context) => LoginScreen(),
        ForgetPassword.id : (context) => ForgetPassword(),
        RegistrationScreen.id : (context) => RegistrationScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        SubmitScreen.id: (context) => SubmitScreen(),
        MapScreen.id: (context) => MapScreen(),
        SettingsScreen.id: (context) => SettingsScreen()
      },
    );
  }
}
