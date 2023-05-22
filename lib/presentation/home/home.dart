
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasanmemoodportfolio/presentation/home/about_me_widget.dart';
import 'package:hasanmemoodportfolio/presentation/home/bloc/home_cubit.dart';
import 'package:hasanmemoodportfolio/presentation/home/contact_me_widget.dart';
import 'package:hasanmemoodportfolio/presentation/home/education_widget.dart';
import 'package:hasanmemoodportfolio/presentation/home/footer_widget.dart';
import 'package:hasanmemoodportfolio/presentation/home/main_widget.dart';
import 'package:hasanmemoodportfolio/presentation/home/my_project_widget.dart';
import 'package:hasanmemoodportfolio/presentation/home/skills/skills_widget.dart';
import 'package:hasanmemoodportfolio/src/app_style.dart';
import 'package:hasanmemoodportfolio/src/app_urls.dart';
import 'package:hasanmemoodportfolio/src/string.dart';
import '../../components/custom_widgets.dart';
import '../../src/app_colors.dart';


class HomeScreen extends StatelessWidget {

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey keyAboutMe=GlobalKey();
  final GlobalKey keySkills=GlobalKey();
  final GlobalKey keyProjects=GlobalKey();
  final GlobalKey keyEducation=GlobalKey();

    HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: BlocProvider(
  create: (context) => HomeCubit()..getNoticeMsg(),
  child: Scaffold(
        endDrawer: appDrawer(context),
        key: scaffoldKey,
          backgroundColor: Colors.white,
          body: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return bodyWidget(context: context, width: constraints.maxWidth);
          })),
),
    );

  }




  Widget bodyWidget({required BuildContext context, required double width}) {
    return Stack(children: [
      SingleChildScrollView(
        child: Column(
          children: [

            MainContainer(clrFlutter: AppColor.clrFlutter, context: context),
             SizedBox(
              key: keyAboutMe,
              height: 40,
            ),
            AboutMeContainer(context: context),
            const SizedBox(
              height: 40,
            ),
            //education and contact
            educationAndContact(width, context),
            SizedBox(
              key: keyProjects,
              height: 40,
            ),
            MyProjectsContainer(width:width,),
            const SizedBox(
              height: 40,
            ),
            SkillsListWidget(key: keySkills,),
            const SizedBox(
              height: 20,
            ),
            const NoticeTextWidget(),
            const SizedBox(
              height: 20,
            ),
             FooterContainer(width),

          ],
        ),
      ),
      appBarWidget(width),
    ]);
  }

  Container educationAndContact(double width, BuildContext context) {
    return Container(
            key: keyEducation,
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 50),
            decoration:  BoxDecoration(
              color: const Color(0xff00579B).withOpacity(0.1),
              image: const DecorationImage(
                  image: NetworkImage(AppUrls.urlBgImage),
                  fit: BoxFit.cover),
            ),
            child: width>900?
          Row(children: [
            Expanded(child: ContactMeContainer(context: context)),
            const SizedBox(
              height: 10,
            ),
            Expanded(child: EducationContainer(context: context)),

          ],):
          Column(children: [
            ContactMeContainer(context: context),
            const SizedBox(
              height: 10,
            ),
            EducationContainer(context: context),

          ],)

            ,);
  }
  Widget appBarWidget(width) {
    return Container(
      padding: const EdgeInsets.fromLTRB(4, 0, 10, 0),
      height: 60,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/hicon.png",
                width: 30,
                height: 30,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
              AppString.stringHasanMehmoodPortfolio,
                style: AppStyle.txtWhiteStyle,
              ),
            ],
          ),
          width<900?InkWell(
              onTap: (){
                scaffoldKey.currentState!.openEndDrawer();
              },
              child: const Icon(Icons.menu,color: AppColor.flutterDark,size: 40,)):
          Row(children: [

            TabTextWidget(txt: AppString.stringAboutMe,scrollKey:keyAboutMe),
            TabTextWidget(txt:AppString.stringContact,scrollKey: keyEducation),
            TabTextWidget(txt: AppString.stringProjects,scrollKey: keyProjects),
            TabTextWidget(txt: AppString.stringSkills,scrollKey: keySkills),
            const TabTextWidget(txt: AppString.stringHireMe, clr: AppColor.flutterDark),
          ]),
        ],
      ),
    );
  }

Widget appDrawer(BuildContext context){
    return Drawer(
      child: ListView(
        children: [

          ListTile(
            title: TabTextWidgetDrawer(txt: AppString.stringAboutMe,scrollKey:keyAboutMe,hoverClr: AppColor.flutterLight),
            onTap: () {
              Navigator.pop(context);
              // Code to handle 'Skills' menu item
            },
          ),
          ListTile(
            title: TabTextWidgetDrawer(txt:AppString.stringContact,scrollKey: keyEducation,hoverClr: AppColor.flutterLight),
            onTap: () {
              // Code to handle 'Home' menu item
            },
          ),
          ListTile(
            title: TabTextWidgetDrawer(txt: AppString.stringProjects,scrollKey: keyProjects,hoverClr: AppColor.flutterLight),

            onTap: () {
              // Code to handle 'About' menu item
            },
          ),
          ListTile(
            title:   TabTextWidgetDrawer(txt: AppString.stringSkills,scrollKey: keySkills,hoverClr: AppColor.flutterLight),

            onTap: () {
              // Code to handle 'Education' menu item
            },
          ),
          ListTile(
            title:      const TabTextWidgetDrawer(txt: AppString.stringHireMe, clr: AppColor.flutterDark, hoverClr: AppColor.flutterLight),

            onTap: () {
              // Code to handle 'Education' menu item
            },
          ),

        ],
      ),
    );
}
}

class NoticeTextWidget extends StatelessWidget {
  const NoticeTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
  builder: (context, state) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(state.noticeText,style: TextStyle(fontSize: 12,color: AppColor.flutterDark),),
    );
  },
);
  }
}



