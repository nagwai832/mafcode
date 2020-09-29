import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screens/components/rounded_button.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome>with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    animation = ColorTween(begin: Colors.blueGrey, end: Color(0xff00416A),)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                    margin: new EdgeInsets.only(left: 80.0),
                    decoration: ShapeDecoration(shape: CircleBorder(side: BorderSide(width: 2 , color: Colors.white))),
                    child: CircleAvatar(backgroundImage:AssetImage('assets/images/welcome.png'),
                      radius: 100.0, backgroundColor: Colors.white,)),
                /*Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                TypewriterAnimatedTextKit(
                  text: ['Flash Chat'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),*/
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              title: 'Log In',
              colour: Color(0xff295883),
              onPressed: () {
                Navigator.of(context).pushNamed('/second');
              },
            ),
            RoundedButton(
              title: 'Register',
              colour: Color(0xff295883),
              onPressed: () {
                Navigator.of(context).pushNamed('/third');
              },
            ),
          ],
        ),
      ),
    );
  }
} /*Scaffold(
      backgroundColor: Color(0xff00416A),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0,vertical: 100.0),
              child: CircleAvatar(backgroundImage:AssetImage('assets/images/welcome.png'), radius: 100.0),
            ),


          ],
        ),
      ),

    );
  }
}*/
