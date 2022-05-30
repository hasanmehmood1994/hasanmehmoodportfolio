
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import 'package:hasanmemoodportfolio/controllers/dashboardcontroller.dart';
import 'package:hasanmemoodportfolio/extensions/customextention.dart';

import 'package:get/get.dart';
import '../../components/tab_text.dart';
import '../../enums/screen.dart';
import '../../mixins/dashboardmixin.dart';

import '../../responsive_controller.dart';
import '../../src/custom_colors.dart';
import 'about_me_widget.dart';
import 'drawer_widget.dart';
import 'footerwidget.dart';
import 'projectwidget.dart';
import 'skillwidget.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with DashboardMixin {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //getCurrentScreen(context);
  }
  ResponsiveController controller = Get.find();

  @override
  Widget build(BuildContext context) {
controller.getCurrentScreen(context);
    return SafeArea(child: Scaffold(
key:scaffoldKey ,
        endDrawer: Drawer(

        child: Main_Drawer(context)
    ),
        body: mainWidget()));
  }

  Widget mainWidget() {

    return Column(
      children: [
       InkWell(
           onTap: (){
             controller.scrollToWidgettest();
           },
           child: tabBarWidget()),
        Expanded(
          child: ListView(
            children: [
              headerWidget(),
              bodyWidget(),
            ],
          ),
        ),
      ],
    );
  }

  Widget headerWidget() {
    return Container(
        decoration: BoxDecoration(
          color: dart1.withOpacity(0.9),
        ),
        width: context.width,
        height: headerHeight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            headerWidgetTopRow(),
            headerWidgetTopMain(),
          ],
        ));
  }

  Widget bodyWidget() {
    return Container(
        height: controller.currentScreen.value==CurrentScreen.Desktop?bodyHeight:bodyHeight_mobile,
        color: dart2,
        child: Column(


          children: [

            AboutMe(context),
            Text("SKILLS",
              style: TextStyle(
                  color: orange,
                  fontSize: 26,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold ,overflow: TextOverflow.ellipsis),maxLines: 1,),
            SkillWidget(context),
            Text("PROJECTS",
              style: TextStyle(
                  color: orange,
                  fontSize: 26,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold ,overflow: TextOverflow.ellipsis),maxLines: 1,),
            Expanded(child: Projectwidget(context)),

            Footerwidget(context)
          ],
        ));
  }

  Widget headerWidgetTopRow() {
    return Container();
  }

  Widget headerWidgetTopMain() {
    return Container(
      margin:
      controller.currentScreen.value==CurrentScreen.Desktop?EdgeInsets.fromLTRB(0, 0, 0, 0):EdgeInsets.fromLTRB(10, 0,10, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [headerWidgetInformation(),
          controller.currentScreen.value==CurrentScreen.Mobile?Text(""):headerWidgetImage()
        ],
      ),
    );
  }

  Widget headerWidgetInformation() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            asalam_u_alikum_text,
            style: const TextStyle(fontSize: 14, color: Colors.white,overflow: TextOverflow.ellipsis),maxLines: 1,
          ),
          controller.currentScreen.value==CurrentScreen.Desktop?
          Text(
            name_text,
            style: const TextStyle(
                fontSize: 45, color: Colors.white, fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),maxLines: 1,
          ): Text(
            name_text,
            style:  TextStyle(
                fontSize: controller.currentScreen.value==CurrentScreen.Mobile?28:35, color: Colors.white, fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),maxLines: 1,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                development_name,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 25,
                    color: Colors.white,overflow: TextOverflow.ellipsis),maxLines: 1,
              ),
              SizedBox(
                width: 5,
              ),
              Image.asset(
                "assets/images/img_flutter.png",
                width: 30,
                height: 30,
              )
            ],
          ),
          Text(
            platform_name,
            style: const TextStyle(
                fontWeight: FontWeight.w500, fontSize: 14, color: Colors.white,overflow: TextOverflow.ellipsis),maxLines: 1,
          ),
          SizedBox(
            height: 55,
          ),
          Row(
            children: [
              Text(
                city_name,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white,overflow: TextOverflow.ellipsis),maxLines: 1,
              ),
              SizedBox(
                width: 5,
              ),
              Image.asset(
                "assets/images/img_location_pakistan.png",
                width: 20,
                height: 30,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  color: orange,
                  child: const Text(
                    "View Cv",
                    style: TextStyle(fontSize: 15, color: Colors.white,overflow: TextOverflow.ellipsis),maxLines: 1,
                  ),
                  onPressed: () {launchCvFromUrl();})
              .sizedBoxCustom(height: 40, width: 100),
        ],
      ),
    );
  }

  Widget headerWidgetImage() {
    return Container(
      child: Image.asset(

        "assets/images/img_hasan.png",
        fit: BoxFit.fill,
        height:  headerHeight,
        width: controller.currentScreen.value==CurrentScreen.Desktop?370:280.0,
      ),
    );
  }

  Widget tabBarWidget() {
    return Container(
      padding: EdgeInsets.fromLTRB(4, 0, 10, 0),
      width: context.width,
      height: tabBarHeight,
      color: dart1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Image.asset(
              "assets/images/img_signature.png",
              height: 60,
              width: 120,
              fit: BoxFit.fill,
            )
          ]),
          controller.currentScreen.value==CurrentScreen.Mobile?InkWell(
              onTap: (){
                scaffoldKey.currentState!.openEndDrawer();

              },
              child: Icon(Icons.menu,color: orange,size: 40,)):
          Row(children: [
            TabText(txt: "About Me",sckey: controller.key_about_me,),
            TabText(txt: "Skills",sckey: controller.key_skills,),
            TabText(txt: "Portfolio",sckey:controller.key_portfolio,),
            TabText(txt: "Flutter Tutorials"),
            TabText(
                txt: "Hire Me", clr: orange.withOpacity(0.69), hoverclr: dart3),
          ]),
        ],
      ),
    );
  }


}




