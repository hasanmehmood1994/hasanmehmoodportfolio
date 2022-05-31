import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hasanmemoodportfolio/mixins/dashboardmixin.dart';
import 'package:hasanmemoodportfolio/responsive_controller.dart';
import 'package:hasanmemoodportfolio/src/custom_colors.dart';
import '../../components/custom_dialogs.dart';
import '../../components/tab_text.dart';
class Main_Drawer extends StatelessWidget with DashboardMixin{
  BuildContext context;
   Main_Drawer(this. context, {Key? key}) : super(key: key);
  ResponsiveController controller=Get.find();
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: dart1,

      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        //padding: EdgeInsets.zero,
        children: [
           Container(
             width: 200,
             height:180,
             child: DrawerHeader(
              decoration: BoxDecoration(
                color: dart3,
              ),
              child: Image.asset("assets/images/img_hasan.png",height: 200,width: 180,fit: BoxFit.contain,),

          ),
           ),
          ListTile(
            title: DrawerText(txt: "About Me"),
            onTap: () {
        controller.scrollToabout_meWidget();
        Get.back();
            },
          ),
          ListTile(
            title: DrawerText(txt: "Skills"),
            onTap: () {
       controller.scrollToSkillsWidget();
       Get.back();
            },
          ),
          ListTile(
            title: DrawerText(txt: "Portfolio"),
            onTap: () {
              controller.scrollToportfolioWidget();
              Get.back();
            },
          ),
          ListTile(
            title: DrawerText(txt: "Flutter Snippets"),
            onTap: () {
              Get.back();
              Tutorials_dialog(context);

            },
          ),
          ListTile(
            title: DrawerText(txt: "Hire Me"),
            onTap: () {
              Get.back();
              hireMe_dialog(context);

            },
          ),
        ],
      ),
    );
  }
}




//TabText(txt: "Hire Me", clr: orange.withOpacity(0.69), hoverclr: dart3),