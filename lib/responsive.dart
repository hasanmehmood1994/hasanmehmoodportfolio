import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'enums/screen.dart';


class Testhai extends StatefulWidget {
  const Testhai({Key? key}) : super(key: key);

  @override
  State<Testhai> createState() => _TesthaiState();
}

class _TesthaiState extends State<Testhai> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 200,
          width: 200,
          child: Which_ana(),
        ),
      ),
    );
  }

  Widget Which_ana() {
    print("start");
   if(context.width>=1000)
     {
       print("1");
       return Text("Desktop Web",style: TextStyle(fontSize: 30,color: Colors.black),);
     }
   else if(context.width>700 && Get.width<1000){
     print("2");
     return Text("Tab",style: TextStyle(color: Colors.black,fontSize: 30),);
   }
   else if(context.width<700 ){
     print("3");
     return Text("Mobile",style: TextStyle(color: Colors.black,fontSize: 30),);
   }
   else{
     print("4");
     return Text("Mobile",style: TextStyle(color: Colors.black,fontSize: 30),);
   }

  }

}

mixin ResponsiveMixin{
  CurrentScreen currentScreen=CurrentScreen.Mobile;
   getCurrentScreen(BuildContext context) {
    if(context.width>=1000)
    {
      print("1");
     currentScreen=CurrentScreen.Desktop;
    }
    else if(context.width>700 && Get.width<1000){
      print("2");
      currentScreen=CurrentScreen.Tablet;
    }
    else if(context.width<700 ){
      print("3");
      currentScreen= CurrentScreen.Mobile;
    }
    else{
      print("4");
      currentScreen=CurrentScreen.Mobile;
    }

  }
}
