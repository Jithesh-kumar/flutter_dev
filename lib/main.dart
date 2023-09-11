// ignore_for_file: equal_keys_in_map

import 'package:flutter/material.dart';
import 'package:login_app/pages/home.dart';
import 'package:login_app/pages/login.dart';
import 'package:login_app/pages/register.dart';
//import 'package:login_app/screens/grid_view.dart';
import 'package:login_app/splash_scren.dart';
import 'package:login_app/widget/item_screen.dart';
import 'package:login_app/widget/widget_home/home_screen.dart';
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
      PlantScreen.routeName: (ctx) => PlantScreen(),
      ItemScreen.routeName: (ctx) => ItemScreen(),
      //'ad': (context) => MyForm(),
      //'profile': (context) => ProfileScreen(),
    },
    theme: ThemeData(
      canvasColor: Colors.white,
      primaryColor: Colors.green,
      fontFamily: 'Lato',
    ),
    home: const SplashScreen(),
  ));
}
