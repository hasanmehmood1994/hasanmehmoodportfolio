
import 'package:flutter/material.dart';

import '../../mixins/dashboardmixin.dart';
import '../../src/custom_colors.dart';


class Footerwidget extends StatelessWidget  with DashboardMixin {
  BuildContext context;
   Footerwidget(this. context, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
padding: EdgeInsets.fromLTRB(12, 0, 12, 0),
      color: dart1,
  height: 70,
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Made by Hasan Mehmood in Flutter ",style: TextStyle(color: Colors.white,fontSize: 14,overflow: TextOverflow.ellipsis),maxLines: 1,),
        Image.asset("assets/images/img_flutter.png",width: 22,height: 22,),
      ]),
    );
  }
}
