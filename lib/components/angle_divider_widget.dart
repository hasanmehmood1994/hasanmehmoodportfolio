

import 'dart:math' as math;
import 'package:flutter/material.dart';

class AngledDivider extends StatelessWidget {
  final double height;
  const AngledDivider({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = this.height/1.5;
    final width = size.width;

    final radians = math.atan(height / (2 * width));
    final x = math.tan(radians).abs();
    final y = 1.8 / (x + 1);

    return Container(
      height: this.height,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-x, -y),
          end: Alignment(x, y),
          colors: const [Colors.white, Color(0xff00579B)],
          stops: const [0.5, 0.5],
        ),
      ),
    );
  }
}
