import 'package:flutter/material.dart';


import '../enums/screen.dart';
import '../responsive.dart';
import '../src/custom_colors.dart';

class TabText extends StatelessWidget  with ResponsiveMixin {
  var txt, clr, hoverclr;

  TabText({this.txt, this.clr, this.hoverclr});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
getCurrentScreen(context);
    return Container(
        margin: currentScreen==CurrentScreen.Tablet?EdgeInsets.fromLTRB(5, 10, 5, 10):EdgeInsets.fromLTRB(10, 10, 10, 10) ,
        child: MaterialButton(
            onPressed: () {},
            hoverColor: this.hoverclr ?? orange,
            child: Text(
              "$txt ",
              style: TextStyle(
                  color: clr ?? Colors.white,
                  fontSize: currentScreen==CurrentScreen.Tablet?15:18,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            )));
  }
}