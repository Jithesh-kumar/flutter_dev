import 'package:flutter/material.dart';
import 'package:login_app/components/event_card_icon.dart';

class EventCard extends StatelessWidget {
  final bool isPast;
  final Widget child;

  const EventCard({
    Key? key,
    required this.isPast,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // EventCard container with content
        Container(
          margin: EdgeInsets.all(25),
          padding: EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: isPast ? Colors.deepPurple[300] : Colors.deepPurple[100],
            borderRadius: BorderRadius.circular(8),
          ),
          child: child,
        ),
        EventCardIcon()
      ],
    );
  }
}
