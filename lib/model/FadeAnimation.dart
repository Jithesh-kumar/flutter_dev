// import 'package:flutter/material.dart';

// class FadeAnimation extends StatelessWidget {
//   final double delay;
//   final Widget child;

//   FadeAnimation(this.delay, this.child);

//   @override
//   Widget build(BuildContext context) {
//     return TweenAnimationBuilder(
//       duration: Duration(milliseconds: 500),
//       curve: Curves.easeInOut,
//       tween: Tween<double>(begin: 1.0, end: 0.0),
//       builder: (context, double opacity, child) {
//         return Opacity(
//           opacity: opacity,
//           child: child,
//         );
//       },
//       child: FutureBuilder(
//         // Ensure the child widget is built only once.
//         future: Future.delayed(Duration(milliseconds: (500 * delay).round())),
//         builder: (context, snapshot) {
//           return child;
//         },
//       ),
//     );
//   }
// }
