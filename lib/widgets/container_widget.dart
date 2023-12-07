import 'package:flutter/material.dart';
import 'package:testproject_trial/core/constants.dart';

class ChangingContainer extends StatelessWidget {
  const ChangingContainer({
    super.key,
    required this.height,
    required this.color,
    required this.content,
  });

  final double height;
  final Color color;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height / 2.34,
      decoration: BoxDecoration(
          color: color,
          border: Border(bottom: BorderSide(color: black, width: 4.0))),
      child: Center(
        child: Text(
          content,
          style: TextStyle(color: black, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
