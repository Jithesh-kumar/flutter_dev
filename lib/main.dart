import 'package:flutter/material.dart';
import 'package:login_app/pages/home.dart';
import 'package:login_app/pages/login.dart';
import 'package:login_app/pages/register.dart';
//import 'package:login_app/screens/grid_view.dart';
import 'package:login_app/splash_scren.dart';
//import 'package:login_app/screens/profile.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    //theme: ThemeData(fontFamily: 'Roboto'),
    //initialRoute: 'login',
    routes: {
      'login': (context) => MyLogin(),
      'register': (context) => MyRegister(),
      'home': (context) => HomePage(),
      //'ad': (context) => MyForm(),
      //'profile': (context) => ProfileScreen(),
    },
    home: const SplashScreen(),
  ));
}
