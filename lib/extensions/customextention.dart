

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
extension WidgetModifier on Widget {
  Widget sizedBoxCustom({double? height,double? width}) {
    return SizedBox(
      height: height??double.infinity,
      width: width??double.infinity,
      child: this,
    );
  }
}