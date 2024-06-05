import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:the_transporter/screens/wrapper.dart';
import 'package:the_transporter/screens/auth/sign_in.dart';
import 'package:the_transporter/screens/auth/sign_up.dart';
import 'package:the_transporter/screens/home/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Wrapper(),
        '/sign-in': (context) => SignIn(),
        '/sign-up': (context) => SignUp(),
        '/home': (context) => Home(),
      },
    );
  }
}
