
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hasanmemoodportfolio/responsive_controller.dart';

import '../../mixins/dashboardmixin.dart';
import '../../src/MyCustomScrollBehavior.dart';

class SkillWidget extends StatelessWidget with DashboardMixin {
  BuildContext context;

ResponsiveController controller=Get.find();
  SkillWidget(this.context );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

      height: 100,
        margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child:ScrollConfiguration(
        behavior: MyCustomScrollBehavior(),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
            itemCount: skill_name_list.length,
            itemBuilder: (context, index) {
          return Skill_Item_Card(index: index);
        }),
      ));

  }

  Skill_Item_Card({index}){
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 30, 10),
      child: Row(children: [
        Image.asset("${skill_icon_list[index]}",height: 30,width: 30,),
        SizedBox(width: 4,),
        Text("${skill_name_list[index]}",style: TextStyle(fontSize: 16,color: Colors.white,overflow: TextOverflow.ellipsis),maxLines: 1),

      ],),

    );
  }


}