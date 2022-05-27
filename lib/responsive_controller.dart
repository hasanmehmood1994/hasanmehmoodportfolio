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

}