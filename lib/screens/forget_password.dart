import 'package:flutter/material.dart';
import 'package:flutter_screens/components/rounded_button.dart';
import 'package:flutter_screens/constants.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  bool showSpinner = false;

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
                  onChanged: (value) {},
                  decoration:
                      kTextFieldDecoration.copyWith(hintText: 'Enter Email '),
                ),
                SizedBox(
                  height: 24.0,
                ),
                RoundedButton(
                  title: 'Submit',
                  colour: Color(0xff295883),
                  onPressed: () async {
                    setState(() {});
                  },
                ),
              ]),
        ),
      ),
    );
  }
}
