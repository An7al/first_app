import 'package:first_app/DiceRoller.dart';
import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

class GradiantContainer extends StatelessWidget {
  const GradiantContainer(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter)),
      child: const Center(child : DiceRoller()),
    );
  }
}
