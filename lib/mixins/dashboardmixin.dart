import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import '../responsive.dart';
import '../src/custom_colors.dart';

mixin DashboardMixin {

  var cv_pdf_url="https://firebasestorage.googleapis.com/v0/b/hasanmehmoodportfolio.appspot.com/o/HasanCv2022.pdf?alt=media&token=ffc1ef26-6016-4135-a397-5f80b5e5fd58";
  var asalam_u_alikum_text="Asalamu Alaikum";
  String name_text="I'm Hasan Mehmood";
  String platform_name="Android |  Ios | WeB | Desktop | Mac ";
  String development_name="Flutter Developer";
  String  city_name="Rawalpindi / Islamabad";
  String  country_name="Pakistan";
  String AboutMe_titletext="About Me";
  var about_me_text2= "I am always energetic and eager to learn new skills";
  var about_me_text3= "I have experience working as part of a team and individually";

  var about_me_text="To apply my knowledge, logic building , and decision making skills in a dynamic organization at a position where these skills can be further polished and taken to a higher level.";

  var personal_info_text=
    "CNIC No: 37405-3502638-7\n"+
    "Address: H.NO. 1605  Street 128 Sector 1 Gulshanabad Adyala Road Rawalpindi\n"+
    "Phone No: 0301-5077202\n"+
    "E-mail: hasanmehmood.email@gmail.com\n"
  ;
  var Cnic="37405-3502638-7";
  var Address="H.NO. 1605  Street 128 Sector 1 Gulshanabad Adyala Road Rawalpindi";
  var Mobile ="0301-5077202";
  var Email="hasanmehmood.email@gmail.com";

  var education="BC (SE) 4 years\n"+

  "Foundation university Rawalpindi campus.\n\n"+

  "F.Sc (ICS)\n"+
  "Global college system Rawalpindi.";

  // "Matriculation (Science)\n"+
  // "Noor Foundation model public school Rawalpindi.\n";
  var bodyHeight = 1280.0;
  var bodyHeight_mobile = 1510.0;
  //1200.0;
  var headerHeight = 400.0;
  var img_url = "https://res.cloudinary.com/practicaldev/image/fetch/s--slljVTGZ--/c_imagga_scale,f_auto,fl_progressive,h_500,q_auto,w_1000/https://cdn-images-1.medium.com/max/800/1%2AROuBKDAhiWFl3jIbDvtinw.png";
  var tabBarHeight = 55.0;
  var aboutMeHeight = 640.0;
  var aboutMeHeight_mobile = 880.0;
  var objectHeight = 190.0;
  var objectHeight_mobile = 280.0;


  var personal_info_education_height=320.0;
  var personal_info_education_height_mobile=640.0;

var skill_name_list=["Flutter","Firebase","Rest Integration","ANDROID","JAVA","Google Maps","Local Database","Ios App","Mac App","Desktop App"];
  var skill_icon_list=["assets/images/img_flutter.png","assets/icons/ic_firebase.png","assets/icons/ic_api.png","assets/icons/ic_android.png","assets/icons/ic_java.png","assets/icons/ic_googlemaps.png","assets/icons/ic_database.png","assets/icons/ic_apple.png","assets/icons/ic_mac.png","assets/icons/ic_desktop.png"];
  var slider_items=[

    sliderItemWidget(txt: "Supply Chain Mobile Pos",backgroud: clr_supplychain,txtclr: clr_supplychain,imgurl: "assets/projects/project_supplychain.jpg"),
    sliderItemWidget(txt: "Gems Wares Inventory Management",backgroud:clr_gemswears,txtclr: clr_gemswears,imgurl: "assets/projects/project_gemwares.png"),
    sliderItemWidget(txt: "Styler Salons Booking App (saudi saloons)",backgroud:clr_styler,txtclr: clr_styler,imgurl: "assets/projects/project_styler.png"),
    sliderItemWidget(txt: "Clear-Dil-Kyc ",backgroud:Colors.blueAccent.shade100,txtclr: Colors.blueAccent,imgurl: "assets/projects/project_kyc.png"),
    sliderItemWidget(txt: "E-learning App ",backgroud:clr_elearning,txtclr:clr_elearning,imgurl: "assets/projects/project_elearning.png"),
    sliderItemWidget(txt: "Casuality",backgroud: clr_causality,txtclr: clr_causality,imgurl: 'assets/projects/project_casuality.jpg'),
    sliderItemWidget(txt: "Dr Gersch Appointment Booking App  ",backgroud:clr_drgerch,txtclr:clr_drgerch,imgurl: "assets/projects/project_drgesch.png"),
    sliderItemWidget(txt: "Smart Notice Board Tv/Mob App  ",backgroud:clr_smartnotice,txtclr: clr_smartnotice,imgurl: "assets/projects/project_smartnoticeboard.png"),
    sliderItemWidget(txt: "Scan a deal  ",backgroud:clr_scanadeal,txtclr:clr_scanadeal,imgurl: "assets/projects/project_scanadeal.png"),
    sliderItemWidget(txt: "360 camera app  ",backgroud:clr_camera360,txtclr: clr_camera360,imgurl: "assets/projects/project_camera360.png"),
    sliderItemWidget(txt: "ML & CMIS",backgroud: clr_mlics,txtclr:clr_mlics,imgurl: 'assets/projects/project_mlics.png'),
    sliderItemWidget(txt: "Scrum Poker ",backgroud:clr_scrum,txtclr:clr_scrum,imgurl: "assets/projects/project_scrumpoker.png"),
    sliderItemWidget(txt: "Willson Fitness Classes",backgroud: clr_willson,txtclr:clr_willson,imgurl: 'assets/projects/project_willson.png'),


  ];



  GlobalKey key_about_me=GlobalKey();
  GlobalKey key_skills=GlobalKey();
  GlobalKey key_portfolio=GlobalKey();
  GlobalKey key_tutorials=GlobalKey();
  launchCvFromUrl() async {
    if (!await launchUrl(Uri.parse(cv_pdf_url))) throw 'Could not launch $cv_pdf_url';
  }
  String calculate_work_experience(){
    final start_date = DateTime(2020, 1, 1);
    final date2 = DateTime.now();
    final difference = date2.difference(start_date).inDays;
    final years = date2.difference(start_date).inDays/365;
    print("${years}");
    int y=years.toInt();
    print("${y}");

    return "${y}+";


  }

}
var default_project_image="assets/projects/project_supplychain.jpg";
 Widget sliderItemWidget({txt,backgroud,txtclr,imgurl}) {
  return Container(
    decoration: new BoxDecoration(
        color: backgroud.withOpacity(0.4)??Colors.white,
        borderRadius: new BorderRadius.all( Radius.circular(10.0))
    ),
    padding: EdgeInsets.all(10),
    width: double.infinity,
 child: Column(children: [AutoSizeText("${txt}",style: TextStyle(color:txtclr?? orange,fontSize: 22,fontWeight: FontWeight.bold),),
 Spacer(),
 Image.asset(imgurl??default_project_image,width: 100,height: 100,),
   Spacer(),
 ]),);

  //projects_description

}