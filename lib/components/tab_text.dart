import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hasanmemoodportfolio/mixins/dashboardmixin.dart';


import '../enums/screen.dart';

import '../responsive_controller.dart';
import '../src/custom_colors.dart';

class TabText extends StatelessWidget  with DashboardMixin {
  var txt, clr, hoverclr;

  TabText({this.txt, this.clr, this.hoverclr});
  ResponsiveController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
        margin: controller.currentScreen.value==CurrentScreen.Tablet?EdgeInsets.fromLTRB(5, 10, 5, 10):EdgeInsets.fromLTRB(10, 10, 10, 10) ,
        child: MaterialButton(
            onPressed: () {},
            hoverColor: this.hoverclr ?? orange,
            child: Text(
              "$txt ",
              style: TextStyle(
                  color: clr ?? Colors.white,
                  fontSize: controller.currentScreen.value==CurrentScreen.Tablet?15:18,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.left,
            )));
  }
}