import 'package:flutter/material.dart';

import '../src/custom_colors.dart';

Widget sliderItemWidget({txt,backgroud,txtclr,imgurl}) {
  return Container(
    decoration: new BoxDecoration(
        color: backgroud.withOpacity(0.4)??Colors.white,
        borderRadius: new BorderRadius.all( Radius.circular(10.0))
    ),
    padding: EdgeInsets.all(10),
    width: double.infinity,
    child: Column(children: [Text("${txt}",style: TextStyle(color:txtclr?? orange,fontSize: 22,fontWeight: FontWeight.bold),),
      Spacer(),
      Image.asset(imgurl??Icon(Icons.all_inbox),width: 100,height: 100,),
      Spacer(),
    ]),);

  //projects_description

}