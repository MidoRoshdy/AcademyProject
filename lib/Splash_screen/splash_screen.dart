import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    handleData(context);
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Text("Car Gallary",
            style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.bold)),
      ),
    );
  }

  Future<void> handleData(context) async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context)
        .pushNamedAndRemoveUntil("home_screen", (route) => false);
  }
}
