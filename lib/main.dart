import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:hasanmemoodportfolio/presentation/home/home.dart';
import 'package:hasanmemoodportfolio/presentation/home/skills/bloc/skill_cubit.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // Replace with actual values
    options: FirebaseOptions(
        apiKey: "AIzaSyBBbfzh2Pqv67VIbI6G3QHMyv98H5xdrYg",
        authDomain: "hasanmehmoodportfolio.firebaseapp.com",
        databaseURL: "https://hasanmehmoodportfolio-default-rtdb.asia-southeast1.firebasedatabase.app",
        projectId: "hasanmehmoodportfolio",
        storageBucket: "hasanmehmoodportfolio.appspot.com",
        messagingSenderId: "350655268167",
        appId: "1:350655268167:web:45652d909ee91a55c77862",
        measurementId: "G-VPV2WVG242"
    ),
  );
  runApp(
    BlocProvider(
      create: (context) =>SkillCubit(),
      child: MaterialApp(
        home: Test(),
      ),
    ),
  );

}



class Test extends StatelessWidget {
   const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.dmSansTextTheme(
          Theme.of(context).textTheme, // If this is not set, then ThemeData.light().textTheme is used.
        ),
      ),
      title: 'Hasan Mehmood Portfolio', // here!
      home: HomeScreen(),
    );
  }
}