import 'package:flutter/material.dart';


class StyledText extends StatelessWidget {
    StyledText(this.typedText , {super.key});
    String typedText ;
  @override
  Widget build(BuildContext context) {
    return  Text(
       typedText,
      style: const TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}