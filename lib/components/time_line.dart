import 'package:flutter/material.dart';
import 'package:login_app/components/event_card.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MyTimeline extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool ispast;
  final eventCard;

  const MyTimeline({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.ispast,
    required this.eventCard,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,
        beforeLineStyle: LineStyle(
          color: ispast ? Colors.deepPurple : Colors.deepPurple.shade100,
        ),
        indicatorStyle: IndicatorStyle(
          width: 40,
          color: ispast ? Colors.deepPurple : Colors.deepPurple.shade100,
          iconStyle: IconStyle(
            iconData: Icons.done,
            color: ispast ? Colors.white : Colors.deepPurple.shade100,
          ),
        ),
        endChild: EventCard(
          isPast: ispast,
          child: eventCard,
        ),
      ),
    );
  }
}
