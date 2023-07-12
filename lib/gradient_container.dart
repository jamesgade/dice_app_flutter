import 'package:flutter/material.dart';
import 'package:dice_app_flutter/styled_text.dart';
import 'package:dice_app_flutter/dice_roller.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final List<Color> colors;

  const GradientContainer(this.colors, {super.key});

  // GradientContainer.sampleGradient({super.key})
  //     : colors = [
  //         const Color.fromARGB(122, 26, 2, 80),
  //         const Color.fromARGB(65, 45, 7, 98),
  //       ];

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
