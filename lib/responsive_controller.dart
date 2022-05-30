import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import '../enums/screen.dart';
class ResponsiveController extends GetxController{
  Rx<CurrentScreen> currentScreen=CurrentScreen.Mobile.obs;
  getCurrentScreen(BuildContext context) {
    if(context.width>=1000)
    {
      print("Desktop");
      currentScreen.value=CurrentScreen.Desktop;
    }
    else if(context.width>700 && context.width<1000){
      print("Tablet");
      currentScreen.value=CurrentScreen.Tablet;
    }
    else if(context.width<700 ){
      print("Mobile");
      currentScreen.value= CurrentScreen.Mobile;
    }
    else{
      print("Mobile");
      currentScreen.value=CurrentScreen.Mobile;
    }

  }
  GlobalKey key_about_me=GlobalKey();
  GlobalKey key_skills=GlobalKey();
  GlobalKey key_portfolio=GlobalKey();
  GlobalKey key_tutorials=GlobalKey();

  void scrollToabout_meWidget() async{
    print("han bhai");
    final context = key_about_me.currentContext;
    if (key_about_me.currentContext != null) {
      print("not");
      await Scrollable.ensureVisible(
        context!,
        duration: const Duration(seconds: 1),
        curve: Curves.linear,
      );
    }
    else{
      print("not2");
    }
  }
  void scrollToSkillsWidget() async{
    print("han bhai");
    final context = key_skills.currentContext;
    if (key_skills.currentContext != null) {
      print("not");
      await Scrollable.ensureVisible(
        context!,
        duration: const Duration(seconds: 1),
        curve: Curves.linear,
      );
    }
    else{
      print("not2");
    }
  }
  void scrollToportfolioWidget() async{
    print("han bhai");
    final context = key_portfolio.currentContext;
    if (key_portfolio.currentContext != null) {
      print("not");
      await Scrollable.ensureVisible(
        context!,
        duration: const Duration(seconds: 1),
        curve: Curves.linear,
      );
    }
    else{
      print("not2");
    }
  }
void scrollToWidget(keyx) async{
  print("han bhai");
  final context = key_skills.currentContext;
  if (key_skills.currentContext == null) {
    print("not");
    await Scrollable.ensureVisible(
      context!,
      duration: const Duration(seconds: 1),
      curve: Curves.linear,
    );
  }
  else{
    print("not2");
  }
}
}