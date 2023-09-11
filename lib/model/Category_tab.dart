import 'package:flutter/material.dart';

class CategoryTabs extends StatefulWidget {
  final String label;
  final String title;
  CategoryTabs(String s, {required this.label, required this.title});

  @override
  State<CategoryTabs> createState() => _CategoryTabsState();
}

class _CategoryTabsState extends State<CategoryTabs> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = !isTapped; // Toggle the tapped state
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          isTapped ? widget.title : widget.label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: isTapped ? FontWeight.w900 : FontWeight.w300,
            color: isTapped ? Colors.black : Colors.grey,
          ),
        ),
      ),
    );
  }
}
