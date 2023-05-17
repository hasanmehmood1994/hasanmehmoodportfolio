part of 'home_cubit.dart';

class HomeState extends Equatable {
  String noticeText;

  HomeState({this.noticeText=""});

  @override
  List<Object> get props => [noticeText];

  HomeState copyWith({String? noticeText}) {
    return HomeState(
      noticeText: noticeText ?? this.noticeText,
    );
  }

}

