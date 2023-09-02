import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login_app/pages/login.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Mylogin(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 230, 232, 194),
        child: const SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage("assets/images/log456.png"),
                width: 200,
              ),
              SizedBox(
                height: 20,
              ),
              SpinKitSpinningLines(
                color: Colors.purpleAccent,
                //color: Colors.deepOrange,
                size: 70.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
