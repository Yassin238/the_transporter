import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:the_transporter/screens/auth/auth.dart';
import 'package:the_transporter/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (snapshot.hasError) {
          return Scaffold(
            body: Center(
              child: Text("Something went wrong!"),
            ),
          );
        } else if (snapshot.hasData) {
          return Home();
        } else {
          return Auth();
        }
      },
    );
  }
}
