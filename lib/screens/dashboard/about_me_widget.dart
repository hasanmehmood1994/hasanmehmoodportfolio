
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';
import '../../responsive_controller.dart';
import 'package:get/get.dart';
import '../../enums/screen.dart';
import '../../mixins/dashboardmixin.dart';

import '../../src/custom_colors.dart';

class AboutMe extends StatelessWidget with DashboardMixin  {
  BuildContext context;

  AboutMe(this.context);
  ResponsiveController controller = Get.find();

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Container(
      height: controller.currentScreen.value==CurrentScreen.Desktop?aboutMeHeight:aboutMeHeight_mobile,

      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: 20,
        ),
        //AutoSizeText(AboutMe_titletext,style: TextStyle(color: Colors.white,fontSize: 25),),
        Objective_Widget(),
        if (controller.currentScreen.value==CurrentScreen.Desktop) personalInfo_Education_ItemCard_Desktop() else
          personalInfo_ItemCard_Mobile(),
        if (controller.currentScreen.value==CurrentScreen.Desktop) Text("") else Education_Widget_Mobile(),

      ]),
    );
  }

  Widget personalInfo_ItemCard_Mobile() {
    return Container(
      alignment: Alignment.center,
width: controller.currentScreen.value==CurrentScreen.Tablet?context.width/2:context.width,
        margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
        child: Column(


          children: [

            SizedBox(
              height: 10,
            ),
            Text("PERSONAL INFORMATION",
              style: TextStyle(
                  color: orange,
                  fontSize: 26,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),maxLines: 1,
            ),
            SizedBox(
              height: 40,
            ),
            Icon_Text_Widget_Mobile(txt: " $Cnic", icon: Icons.credit_card),
            SizedBox(
              height: 8,
            ),
            Icon_Text_Widget_Mobile(txt: " $Address", icon: Icons.home),
            SizedBox(
              height: 8,
            ),
            Icon_Text_Widget_Mobile(txt: " $Mobile ", icon: Icons.phone),
            SizedBox(
              height: 8,
            ),
            Icon_Text_Widget_Mobile(txt: "${Email}", icon: Icons.mail),


            //  AutoSizeText("$personal_info_text",style: TextStyle(color: Colors.white,fontSize: 16,letterSpacing:1 ),),
          ],
        ),
      );
  }

   Widget Icon_Text_Widget_Mobile({txt, icon}) {
    return Row(


crossAxisAlignment: CrossAxisAlignment.start,


              children: [

                Expanded(
                    flex: 1,
                    child: Icon(icon,color: Colors.white,)),SizedBox(width: 10,),Expanded(
                    flex: 9,
                    child: Text("${txt}",style: TextStyle(color: Colors.white,overflow: TextOverflow.clip,),maxLines: 3,))

              ],);
  }

  Widget Objective_Widget() {
    return Container(
      margin:controller.currentScreen.value==CurrentScreen.Desktop?EdgeInsets.fromLTRB(40, 20, 40, 20): EdgeInsets.fromLTRB(10, 20, 10, 20),
      width: context.width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: dart3.withOpacity(1),
        child: Container(
          height: controller.currentScreen.value==CurrentScreen.Desktop?objectHeight:objectHeight_mobile,
          margin: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           Text("ABOUT ME",
                  style: TextStyle(
                      color: orange,
                      fontSize: 26,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold ,overflow: TextOverflow.ellipsis),maxLines: 1,),
              SizedBox(
                height: 20,
              ),
              //   AutoSizeText("$about_me_text",style: TextStyle(color: Colors.white,fontSize: 16,letterSpacing:1 ),),

              Text_Objective(txt: about_me_text2),
              SizedBox(
                height:20,
              ),
           Text_Objective(txt: about_me_text3),
              SizedBox(
                height: 20,
              ),
              Text_Objective(txt:"I have ${calculate_work_experience()} Years Experience in flutter application development",),
              SizedBox(
                height: 10,
              ),
              //  AutoSizeText("$personal_info_text",style: TextStyle(color: Colors.white,fontSize: 16,letterSpacing:1 ),),
            ],
          ),
        ),
      ),
    );
  }
  Widget Education_Widget_Mobile() {
    return Container(
      margin:EdgeInsets.fromLTRB(10, 20, 10, 20),
      width: context.width,
      child: Container(
alignment: Alignment.center,
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Education",
              style: TextStyle(
                  color: orange,
                  fontSize: 26,
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold ,overflow: TextOverflow.ellipsis),maxLines: 1,),
            SizedBox(
              height: 20,
            ),
            //   AutoSizeText("$about_me_text",style: TextStyle(color: Colors.white,fontSize: 16,letterSpacing:1 ),),

            Text_Education_Mobile(txt: education_uni_title),
            Text_Education_Mobile(txt: education_uni),
            Text_Education_Mobile(txt: education_colg_title),
            Text_Education_Mobile(txt: education_colg),
            SizedBox(
              height:5,
            ),


            //  AutoSizeText("$personal_info_text",style: TextStyle(color: Colors.white,fontSize: 16,letterSpacing:1 ),),
          ],
        ),
      ),
    );
  }
  Widget Text_Objective({txt}) {
    return Text(
              "$txt",
              style: TextStyle(
                  color: Colors.white, fontSize: controller.currentScreen.value==CurrentScreen.Desktop?18:14, letterSpacing: 1,overflow: TextOverflow.ellipsis),maxLines: 3,textAlign: TextAlign.start,
            );
  }
  Widget Text_Education_Mobile({txt}) {
    return Text(
      "$txt",
      style: TextStyle(
          color: Colors.white, fontSize: 14, letterSpacing: 1,overflow: TextOverflow.ellipsis),maxLines: 3,textAlign: TextAlign.left,
    );
  }
  Widget personalInfo_Education_ItemCard() {
    return Container(
     height: personal_info_education_height_mobile,
      margin: EdgeInsets.fromLTRB(40, 10, 40, 10),
      width: context.width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: dart3.withOpacity(1),
        child:  Column    (
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text("PERSONAL INFORMATION",
                        style: TextStyle(
                            color: orange,
                            fontSize: 26,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),maxLines: 1,
                      ),

                      SizedBox(
                        height: 40,
                      ),
                      Icon_Text_Widget(txt: " $Cnic", icon: Icons.credit_card),
                      SizedBox(
                        height: 8,
                      ),
                      Icon_Text_Widget(txt: " $Address", icon: Icons.home),
                      SizedBox(
                        height: 8,
                      ),
                      Icon_Text_Widget(txt: " $Mobile ", icon: Icons.phone),
                      SizedBox(
                        height: 8,
                      ),
                      Icon_Text_Widget(txt: " $Email", icon: Icons.mail),
                      //  AutoSizeText("$personal_info_text",style: TextStyle(color: Colors.white,fontSize: 16,letterSpacing:1 ),),
                    ],
                  ),
                )),
            Expanded(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                  child: Column(
                    children: [
                      Text("Education",
                        style: TextStyle(
                            color: orange,
                            fontSize: 26,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),maxLines: 1,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Expanded(
                        child: Text("$education",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              letterSpacing: 1,overflow: TextOverflow.ellipsis),maxLines: 9,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                )),
          ],
        )

        ,
      ),
    );
  }
  Widget personalInfo_Education_ItemCard_Desktop() {
    return Container(
      height: personal_info_education_height,
      margin: EdgeInsets.fromLTRB(40, 10, 40, 10),
      width: context.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text("PERSONAL INFORMATION",
                      style: TextStyle(
                          color: orange,
                          fontSize: 26,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),maxLines: 1,
                    ),

                    SizedBox(
                      height: 40,
                    ),
                    Icon_Text_Widget(txt: " $Cnic", icon: Icons.credit_card),
                    SizedBox(
                      height: 8,
                    ),
                    Icon_Text_Widget(txt: " $Address", icon: Icons.home),
                    SizedBox(
                      height: 8,
                    ),
                    Icon_Text_Widget(txt: " $Mobile ", icon: Icons.phone),
                    SizedBox(
                      height: 8,
                    ),
                    Icon_Text_Widget(txt: " $Email", icon: Icons.mail),
                    //  AutoSizeText("$personal_info_text",style: TextStyle(color: Colors.white,fontSize: 16,letterSpacing:1 ),),
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                child: Column(
                  children: [
                    Text("Education",
                      style: TextStyle(
                          color: orange,
                          fontSize: 26,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),maxLines: 1,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Expanded(
                      child: Text("$education",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            letterSpacing: 1,overflow: TextOverflow.ellipsis),maxLines: 9,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Icon_Text_Widget({txt, icon}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: Text(
            txt,
            style: TextStyle(color: Colors.white,overflow: TextOverflow.fade,),maxLines: 2,
          ),
        )
      ],
    );
  }
}