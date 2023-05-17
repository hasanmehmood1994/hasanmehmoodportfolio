import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_database/firebase_database.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState());
  
  void getNoticeMsg() {
    DatabaseReference firebaseDatabase=FirebaseDatabase.instance.ref("Notice").child("text");

    firebaseDatabase.onValue.listen((value) {
      emit(state.copyWith(noticeText: value.snapshot.value.toString()));

    });
    
  }
}
