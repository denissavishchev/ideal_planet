import 'package:flutter/material.dart';
import 'package:transparent_page/constants.dart';

class InsideBoxStatistic extends StatelessWidget {
  const InsideBoxStatistic({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: kDark,),
        Text(text, style: TextStyle(color: kWhite),),
      ],
    );
  }
}