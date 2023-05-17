import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hasanmemoodportfolio/presentation/home/skills/bloc/skill_cubit.dart';
import 'package:hasanmemoodportfolio/model/skill_model.dart';
import 'package:hasanmemoodportfolio/src/list_custom_behavior.dart';

class SkillsListWidget extends StatefulWidget {
  const SkillsListWidget({Key? key}) : super(key: key);

  @override
  State<SkillsListWidget> createState() => _SkillsListWidgetState();
}

class _SkillsListWidgetState extends State<SkillsListWidget> {
   List<SkillsModel> skillsModelList= [];
   final ScrollController scrollController = ScrollController();



  @override
  Widget build(BuildContext context) {
     BlocProvider.of<SkillCubit>(context).fetchSkills();
    return
    Column(

      children: [

        Row(
          children: [
            Spacer(),
            SizedBox(
              height: 30,
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius:
                        BorderRadius.all(Radius.circular(20))),
                    width: 30,
                    height: 40,
                    alignment: Alignment.topLeft,
                  ),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '  My Skills',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          letterSpacing: 1.0,
                          color: Colors.black,
                        ),
                      )),
                ],
              ),
            ),
            Spacer(),
          ],
        ),SizedBox(
    height: 40,),
        SizedBox(
          height: 300,
          child: BlocBuilder<SkillCubit, SkillState>(
  builder: (context, state) {
        return ScrollConfiguration(
          behavior: ListCustomScrollBehavior(),
          child: ListView.builder(


              controller: scrollController,
              shrinkWrap: true,
            itemCount: state.skillModel.length,scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
              return Container(

                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: SkillCardWidget(title: state.skillModel[index].title,color: state.skillModel[index].color,skillLevel: state.skillModel[index].skill,image: state.skillModel[index].image));
            }



            ),
        );
  },
),
        ),
      ],
    );
  }
}



class SkillCardWidget extends StatelessWidget {
  final String title;
  final Color color;
  final String skillLevel;
  final String image;

  const SkillCardWidget({Key? key, required this. title, required this. color, required this. skillLevel, required this. image}) : super(key: key);
  final txtStyleWhite=const TextStyle(color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      height: 300,width: 200,decoration: BoxDecoration(
        color: Color(0xfffcfcfc),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius:1,
            offset: Offset(-2, 0), // Negative X offset to create shadow on the left side
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(20))),child:
    Column(

      children: [
        Text("$title",style: TextStyle(color: color,fontSize: 18),),
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 4, 50, 0),
          child: Divider(
            color: color,thickness: 0.8,),
        ),
        Spacer(),
        Image.network(image),
        Spacer(),

        Container(

          padding: EdgeInsets.fromLTRB(6, 2, 6, 2),
          decoration: BoxDecoration(     color:color , borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(20)),),

          child: Row(children: [Icon(Icons.cases_outlined,color: Colors.white,size: 20,),SizedBox(width: 4,),Text("Skills",style: txtStyleWhite,),Spacer(),Text("$skillLevel%",style: txtStyleWhite,)],),)
      ],)
      ,);
  }
}