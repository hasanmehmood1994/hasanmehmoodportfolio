import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:hasanmemoodportfolio/model/skill_model.dart';

part 'skill_state.dart';

class SkillCubit extends Cubit<SkillState> {
  SkillCubit() : super(SkillState(skillModel: []));
  final DatabaseReference databaseReference = FirebaseDatabase.instance.ref("Skills");


  void fetchSkills() {
    print("fetch");
    List<SkillsModel> list=[];
    FirebaseDatabase database = FirebaseDatabase.instance;
      database.ref("Skills").  onValue.listen((value) {
        list.clear();
      for (final child in value.snapshot.children) {
        Map<String, dynamic> jsonData = jsonDecode(jsonEncode(child.value));
        String title = jsonData['title'];
        String image = jsonData['image'];
        String skill = jsonData['skill'];
        print(title);
        Color color = Color(int.parse(jsonData['color']));
        list.add(SkillsModel(title: title, color: color, skill: skill, image: image));
        emit(state.copyWith(skillModel: list));
      }

    });



  }

}
