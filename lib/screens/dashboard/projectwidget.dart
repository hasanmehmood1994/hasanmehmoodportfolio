import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

import '../../enums/screen.dart';
import '../../mixins/dashboardmixin.dart';
import '../../responsive.dart';

class Projectwidget extends StatelessWidget with DashboardMixin,ResponsiveMixin{
  BuildContext context;


   Projectwidget(this. context, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    getCurrentScreen(context);
    return Container(

      margin: EdgeInsets.fromLTRB(0, 30, 0, 30),
      width: context.width,

      child:
      CarouselSlider(
          items: slider_items,
          options: CarouselOptions(
            viewportFraction: currentScreen==CurrentScreen.Desktop?0.5:0.85,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          )
      ),

    );
  }
}
