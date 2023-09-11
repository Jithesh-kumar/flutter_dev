import 'package:flutter/material.dart';
import 'package:login_app/components/time_line.dart';
//import 'package:timeline_tile/timeline_tile.dart';

class TimeLine extends StatefulWidget {
  const TimeLine({super.key});

  @override
  State<TimeLine> createState() => _TimeLineState();
}

class _TimeLineState extends State<TimeLine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50.0),
        child: ListView(children: [
          MyTimeline(
            isFirst: true,
            isLast: false,
            ispast: true,
            eventCard: Text("Order Placed"),
          ),
          MyTimeline(
            isFirst: false,
            isLast: false,
            ispast: true,
            eventCard: Text("Order Shiped"),
          ),
          MyTimeline(
            isFirst: false,
            isLast: true,
            ispast: false,
            eventCard: Text("Order Delivered"),
          ),
        ]),
      ),
    );
  }
}
