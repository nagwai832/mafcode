import 'package:flutter/material.dart';
import 'package:mafcode/components/rounded_button.dart';
import 'package:mafcode/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mafcode/screens/forget_password.dart';
import 'package:mafcode/screens/home_screen.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showSpinner = false;
  final _auth = FirebaseAuth.instance;
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 48.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  email = value;
                },
                style: TextStyle(color: Colors.black),
                decoration:
                kTextFieldDecoration.copyWith(hintText: 'Email'),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  password = value;
                },
                style: TextStyle(color: Colors.black),
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Password'),
              ),
              SizedBox(
                height: 24.0,
              ),
              RoundedButton(
                title: 'Log In',
                colour: Color(0xff295883),
                onPressed: () async {
                  setState(() {
                    showSpinner = true;
                  });
                  try {
                    final user = await _auth.signInWithEmailAndPassword(
                        email: email, password: password);
                    if (user != null) {
                      Navigator.pushNamed(context, HomeScreen.id);
                    }

                    setState(() {
                      showSpinner = false;
                    });
                  } catch (e) {
                    print(e);
                  }
                },
              ),
              Container(
                alignment: Alignment.center,
                child: FlatButton(
                  onPressed: () => Navigator.pushNamed(context, ForgetPassword.id),
                  padding: EdgeInsets.only(right: 0.0),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Color(0xff295883)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
