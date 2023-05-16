import 'package:flutter/material.dart';
import 'package:hasanmemoodportfolio/src/app_urls.dart';
import 'package:url_launcher/url_launcher.dart';

import '../generated/assets.dart';
import '../src/app_colors.dart';

class TabTextWidget extends StatelessWidget {
  final  String txt;
  final  Color? clr;
  final  Color? hoverClr;
  final GlobalKey<State<StatefulWidget>>? scrollKey;

 const  TabTextWidget({Key? key, required this. txt,  this. clr, this. hoverClr, this.scrollKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  MaterialButton(
      hoverColor: hoverClr??AppColor.flutterLight,
      onPressed: (){
        if(txt.contains("Hire Me"))
          {
            openMyCv();
          }
        else{
          scrollTo(scrollKey!);

        }



      },child: Container(

        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Text(txt,style: TextStyle(color: clr??Colors.black,fontSize: 17,),)),);
  }
  void scrollTo(GlobalKey<State<StatefulWidget>> key) async{
    final context =key.currentContext;
    if (key.currentContext != null) {
      await Scrollable.ensureVisible(
        context!,
        duration: const Duration(seconds: 1),
        curve: Curves.linear,
      );
    }
    else{

    }
  }


}
class TabTextWidgetDrawer extends StatelessWidget {
  final  String txt;
  final  Color? clr;
  final  Color? hoverClr;
  final GlobalKey<State<StatefulWidget>>? scrollKey;

  const  TabTextWidgetDrawer({Key? key, required this. txt,  this. clr, this. hoverClr, this.scrollKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  MaterialButton(
      hoverColor: hoverClr??AppColor.flutterLight,
      onPressed: (){
        if(txt.contains("Hire Me"))
        {
          openMyCv();
          Navigator.pop(context);
        }
        else{
          scrollTo(scrollKey!);
          Navigator.pop(context);

        }



      },child: Container(

        margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: Text(txt,style: TextStyle(color: clr??Colors.black,fontSize: 17,),)),);
  }
  void scrollTo(GlobalKey<State<StatefulWidget>> key) async{
    final context =key.currentContext;
    if (key.currentContext != null) {
      await Scrollable.ensureVisible(
        context!,
        duration: const Duration(seconds: 1),
        curve: Curves.linear,
      );
    }
    else{

    }
  }


}
void openMyCv() async {
  final Uri url = Uri.parse(AppUrls.urlCv);
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }

} void openLinkedIn() async {
  final Uri url = Uri.parse(AppUrls.urlLinkedIn);
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }}
Widget linkedInButton() {
  return InkWell(
    onTap: (){
      openLinkedIn();
    },
    child:  Image.asset(
      Assets.assetsLinkedin,
      height: 23,
    ),
  );
}
