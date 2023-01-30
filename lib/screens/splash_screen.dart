import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
<<<<<<< HEAD:lib/screens/hello.dart
          child: Container(
          child: Image.asset("assets/bloodbank.png"),),
=======
          child: Image.asset(
            "assets/bloodbank.png",
          ),
>>>>>>> 847a8a4a81cb937df6811c27018e6bb2b87c68a6:lib/screens/splash_screen.dart
        ),
      ),
    );
  }
}
