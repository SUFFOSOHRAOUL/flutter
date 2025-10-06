import 'dart:math';

import 'package:first_app/diceRoller.dart';
import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

const startAlignment = AlignmentGeometry.topLeft;
const endAlignment = AlignmentGeometry.bottomRight;

class GradientContainer extends StatelessWidget {
  GradientContainer(this.gradientColor, {super.key});

  final List<Color> gradientColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColor,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
