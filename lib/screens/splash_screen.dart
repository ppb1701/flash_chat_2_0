import 'package:flash_chat_2_0/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(new MaterialApp(
    home: new Splash(),
  ));
}

class Splash extends StatefulWidget {
  static const String id = 'splash_screen';
  @override
  _SplashState createState() => new _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
        seconds: 4,
        navigateAfterSeconds: new WelcomeScreen(),
        title: new Text(
          'Flash Chat 2.0',
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
        ),
        image: Image.asset('images/logo.png'),
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        onClick: () {
          Navigator.pushNamed(context, WelcomeScreen.id);
        },
        loaderColor: Colors.blueAccent);
  }
}
