import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hasanmemoodportfolio/mixins/dashboardmixin.dart';


import '../enums/screen.dart';

import '../responsive_controller.dart';
import '../src/custom_colors.dart';

class TabText extends StatelessWidget  with DashboardMixin {
  var txt, clr, hoverclr,sckey;

  TabText({this.txt, this.clr, this.hoverclr,this.sckey});
  ResponsiveController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(

        margin: controller.currentScreen.value==CurrentScreen.Tablet?EdgeInsets.fromLTRB(5, 10, 5, 10):EdgeInsets.fromLTRB(10, 10, 10, 10) ,
        child: MaterialButton(
            onPressed: () {

          if(txt.toString().contains("About Me"))
            {
              controller.scrollToabout_meWidget();
            }
          else   if(txt.toString().contains("Skills")){
            controller.scrollToSkillsWidget();
          }
          else   if(txt.toString().contains("Portfolio")){
            controller.scrollToportfolioWidget();
          }
          else   if(txt.toString().contains("Flutter Tutorials")){

          }
          else   if(txt.toString().contains("Hire Me")){

          }
          else{

          }

            },
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

class DrawerText extends StatelessWidget  with DashboardMixin {
  var txt, clr, hoverclr,sckey;

  DrawerText({this.txt, this.clr, this.hoverclr,this.sckey});
  ResponsiveController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(

        margin: controller.currentScreen.value==CurrentScreen.Tablet?EdgeInsets.fromLTRB(5, 10, 5, 10):EdgeInsets.fromLTRB(10, 10, 10, 10) ,
        child: Text(
          "$txt ",
          style: TextStyle(
              color: clr ?? Colors.white,
              fontSize: controller.currentScreen.value==CurrentScreen.Tablet?15:18,
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.left,
        ));
  }
}