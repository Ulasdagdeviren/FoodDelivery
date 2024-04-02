import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  double height;
  SmallText({
    super.key,
    this.color = const Color(0xFFccc7c5),
    this.height = 1.2,
    this.size = 12,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto',
          fontSize: size,
          height: height),
    );
  }
}
