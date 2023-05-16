
import 'package:flutter/material.dart';

class DotCircle extends StatelessWidget {
  const DotCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/hicon.png",
      height: 22,
      width: 22,
    );
  }
}