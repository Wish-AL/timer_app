part of 'main_page_cubit.dart';

class MainPageState extends Equatable {
  const MainPageState({this.mainPageData});

  final List<TimerData>? mainPageData;

  MainPageState copyWith({
    List<TimerData>? mainPageData,
  }) {
    return MainPageState(mainPageData: mainPageData ?? this.mainPageData);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [mainPageData];
}
