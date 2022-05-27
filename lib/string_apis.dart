import 'package:flutter/material.dart';

extension NumberParsing on String {
  int parseInt() {
    return int.parse(this);
  }
  String parseInt2() {
    if(this.length==2)
      {
        return "o bhai";
      }
    else{
      return "theek ha ";
    }


  }
// ···
}// TODO Implement this library.

extension LightThemeEx22 on Colors{
  Color get success => const Color(0xFF28a745);
  Color get info => const Color(0xFF17a2b8);
  Color get warning => const Color(0xFFffc107);
  Color get danger => const Color(0xFFdc3545);
}
extension ExtendedText on Widget {
  alignAtStart() {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: this,
    );
  }

  Card_w() {
    return Card(
      child: this,
    );
  }
  Widget Vis_w(status) {
    return Visibility(
visible: status,
      child: this,
    );
  }
}