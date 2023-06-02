import 'package:acadmy_project/Splash_screen/splash_screen.dart';
import 'package:acadmy_project/bmw/details.dart';
import 'package:acadmy_project/home_screen/Home_screen.dart';
import 'package:acadmy_project/bmw/bmw.dart';
import 'package:acadmy_project/home_screen/user.dart';
import 'package:acadmy_project/phpmyadmin/sql.dart';

import 'package:acadmy_project/search%20screen/search2.dart';
import 'package:flutter/material.dart';

import 'home_screen/category.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Car Gallary',
        theme: ThemeData.light(),
        routes: {
          "/": (context) => SplashScreen(),
          "home_screen": (context) => homescreen(),
          "search": (_) => SearchScreen(),
          "category": (context) => category(),
          "bmw": (context) => BMW(),
          "details": (context) => details(),
          "sql": (context) => TestPage(),
          "user": (context) => user(),
        });
  }
}
