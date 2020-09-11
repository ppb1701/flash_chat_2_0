import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat_2_0/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat_2_0/screens/welcome_screen.dart';
import 'package:flash_chat_2_0/screens/login_screen.dart';
import 'package:flash_chat_2_0/screens/registration_screen.dart';
import 'package:flash_chat_2_0/screens/chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark().copyWith(
      //   textTheme: TextTheme(
      //     body1: TextStyle(color: Colors.black54),
      //   ),
      // ),
      initialRoute: Splash.id,
      routes: {
        Splash.id: (context) => Splash(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
      },
    );
  }
}
