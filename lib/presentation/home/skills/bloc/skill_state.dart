part of 'skill_cubit.dart';
 class SkillState extends Equatable {

   List<SkillsModel> skillModel=[];


   SkillState({required this.skillModel});

  @override
   List<Object> get props => [skillModel];


   SkillState copyWith({List<SkillsModel>? skillModel}) {
     return SkillState(
       skillModel: skillModel ?? this.skillModel,
     );
   }

}

