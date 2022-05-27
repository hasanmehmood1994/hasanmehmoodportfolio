import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/dashboard/dashboard.dart';




Future<void> main() async {
 

  runApp(const Test());
}



class Test extends StatelessWidget {
   const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme, // If this is not set, then ThemeData.light().textTheme is used.
        ),
      ),
      title: 'Hasan Mehmood Portfolio',

      home: Dashboard(),
    );
  }
}