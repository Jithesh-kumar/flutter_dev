import 'dart:math';
import 'package:flutter/material.dart';
import 'package:login_app/pages/drawer.dart';

class Events {
  final String time;
  final String eventName;
  final String description;

  Events(
      {required this.time, required this.eventName, required this.description});
}

class Constants {
  static const Color kPurpleColor = Colors.purple;
  static const Color kGreenColor = Colors.green;
  static const Color kRedColor = Colors.red;
}

class TimelineComponent extends StatelessWidget {
  TimelineComponent({Key? key, this.title}) : super(key: key);

  final String? title;

  final List<Events> listOfEvents = [
    Events(time: "5pm", eventName: "New Icon", description: "Mobile App"),
    Events(
        time: "3 - 4pm", eventName: "Design Stand Up", description: "Hangouts"),
    Events(time: "12pm", eventName: "Lunch Break", description: "Main Room"),
    Events(
        time: "9 - 11am",
        eventName: "Finish Home Screen",
        description: "Web App"),
  ];

  final List<Color> listOfColors = [
    Constants.kPurpleColor,
    Constants.kGreenColor,
    Constants.kRedColor,
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Random random = Random();

    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(title: Text(this.title ?? 'Time Line'), actions: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
          child: Stack(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue.shade200,
                child: const Text('PH'),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 12,
                    minHeight: 12,
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: size.height * 0.3,
                width: double.infinity,
                child:
                    Image.asset("assets/images/bg32.jpg", fit: BoxFit.fitWidth),
              ),
              Positioned(
                top: 40,
                left: 30,
                child: Row(
                  children: <Widget>[
                    Text("8",
                        style: TextStyle(color: Colors.white, fontSize: 70.0)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("Monday",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 25.0)),
                          Text("February 2015".toUpperCase(),
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12.0)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -20,
                right: 15,
                child: FloatingActionButton(
                  onPressed: null,
                  child: IconButton(
                    icon: Icon(Icons.add, color: Colors.white),
                    onPressed: null,
                    iconSize: 40.0,
                  ),
                  backgroundColor: Colors.red,
                ),
              )
            ],
          ),
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: listOfEvents.length,
              itemBuilder: (context, i) {
                return Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(40),
                      child: Row(
                        children: [
                          SizedBox(width: size.width * 0.1),
                          SizedBox(
                            child: Text(listOfEvents[i].time),
                            width: size.width * 0.2,
                          ),
                          SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(listOfEvents[i].eventName),
                                Text(
                                  listOfEvents[i].description,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      left: 50,
                      child: Container(
                        height: size.height * 0.7,
                        width: 1.0,
                        color: Colors.grey.shade400,
                      ),
                    ),
                    Positioned(
                      bottom: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                            color: listOfColors[random.nextInt(3)],
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
