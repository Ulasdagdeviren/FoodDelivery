import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimensions.dart';

class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  TextOverflow
      overFlow; //bir metin alanının belirli bir boyuta sığmaması durumunda ne yapılacağını belirleyen bir özelliktir. ... devamı gibi
  BigText(
      {super.key,
      this.color = const Color(0xFF332d2b),
      this.size = 0,
      required this.text,
      this.overFlow = TextOverflow.ellipsis});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto',
          fontSize: size == 0 ? Dimensions.font20 : size),
    );
  }
}
