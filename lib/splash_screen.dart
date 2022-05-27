import 'package:flutter/material.dart';
import 'package:hasanmemoodportfolio/string_apis.dart';


import 'src/custom_colors.dart';



class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Text("1".parseInt2().toString(),style: TextStyle(color: dart1)).Vis_w(true).Card_w(),
    );
  }
}
