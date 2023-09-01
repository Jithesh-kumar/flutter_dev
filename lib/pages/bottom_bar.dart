//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_app/model/fecth_app.dart';
import 'package:login_app/pages/page_transition.dart';
import 'package:login_app/screens/profile.dart';
import 'package:another_flushbar/flushbar.dart';
//import 'package:another_flushbar/flushbar_helper.dart';
//import 'package:another_flushbar/flushbar_route.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 100,
      child: Scaffold(
        bottomNavigationBar: Container(
          margin: EdgeInsets.all(displayWidth * .05),
          height: displayWidth * .155,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.1),
                blurRadius: 30,
                offset: const Offset(0, 10),
              ),
            ],
            borderRadius: BorderRadius.circular(50),
          ),
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: displayWidth * .02),
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                setState(() {
                  currentIndex = index;
                  HapticFeedback.lightImpact();
                  if (index == 3) {
                    _handelAccountTabPressed();
                  } else if (index == 2) {
                    show_Icon_Flushbar(context);
                    show_Button(context);
                  } else if (index == 1) {
                    _handeleFavriteTabPressed();
                  }
                });
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              child: Stack(
                children: [
                  AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: index == currentIndex
                        ? displayWidth * .32
                        : displayWidth * .18,
                    alignment: Alignment.center,
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      curve: Curves.fastLinearToSlowEaseIn,
                      height: index == currentIndex ? displayWidth * .12 : 0,
                      width: index == currentIndex ? displayWidth * .32 : 0,
                      decoration: BoxDecoration(
                        color: index == currentIndex
                            ? Colors.blueAccent.withOpacity(.2)
                            : Colors.transparent,
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    width: index == currentIndex
                        ? displayWidth * .31
                        : displayWidth * .18,
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              width: index == currentIndex
                                  ? displayWidth * .13
                                  : 0,
                            ),
                            AnimatedOpacity(
                              opacity: index == currentIndex ? 1 : 0,
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child: Text(
                                index == currentIndex
                                    ? '${listOfStrings[index]}'
                                    : '',
                                style: const TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              width: index == currentIndex
                                  ? displayWidth * .03
                                  : 20,
                            ),
                            Icon(
                              listOfIcons[index],
                              size: displayWidth * .076,
                              color: index == currentIndex
                                  ? Colors.blueAccent
                                  : Colors.black26,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handelAccountTabPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Profile()),
    );
  }

  void _handeleFavriteTabPressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const FavoriteScreen()),
    );
  }

  // ignore: non_constant_identifier_names
  void show_Icon_Flushbar(BuildContext context) {
    Flushbar(
      icon: const Icon(
        Icons.settings,
        color: Colors.amber,
        size: 30,
      ),
      duration: const Duration(seconds: 3),
      title: 'Settings',
      message: 'Hey you are here',
    ).show(context);
  }

  // ignore: non_constant_identifier_names
  Future<void> show_Button(BuildContext context) async {
    Flushbar(
      mainButton: ButtonBar(children: [
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PageTransition()));
          },
          child: const Text(
            "Click me",
            style: TextStyle(color: Colors.amberAccent),
          ),
        )
      ]),
      backgroundColor: Colors.black,
      title: "With Button",
      message: "Additional Action",
      messageSize: 15,
      duration: const Duration(seconds: 4),
    ).show(context);
  }

  List<IconData> listOfIcons = [
    Icons.home_rounded,
    Icons.favorite_rounded,
    Icons.settings_rounded,
    Icons.person_rounded,
  ];

  List<String> listOfStrings = [
    'Home',
    'Favorite',
    'Settings',
    'Account',
  ];
}
