import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController{
  GlobalKey key_about_me=GlobalKey();
  GlobalKey key_skills=GlobalKey();
  GlobalKey key_portfolio=GlobalKey();
  GlobalKey key_tutorials=GlobalKey();
  void scrollToWidgettest() async{
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
}