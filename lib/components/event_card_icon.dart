import 'package:flutter/material.dart';

class EventCardIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 5, // Adjust the left position to move the image outside the box
      top: 0,
      bottom: 0,
      child: Container(
        width: 60, // Adjust the width of the container as needed
        height: 60, // Adjust the height of the container as needed
        decoration: BoxDecoration(
          color: Colors.white, // Customize the container background color
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: Image.asset(
            "assets/images/i.png", // Replace with your image asset path
            fit: BoxFit.cover, // Fit the image inside the container
            width: 50, // Adjust the width of the image as needed
            height: 50, // Adjust the height of the image as needed
          ),
        ),
      ),
    );
  }
}
