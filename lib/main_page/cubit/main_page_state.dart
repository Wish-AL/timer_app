part of 'main_page_cubit.dart';

class MainPageState extends Equatable {
  const MainPageState({this.mainPageData, this.searchData});

  final List<TimerData>? mainPageData;
  final List<TimerData>? searchData;

  MainPageState copyWith({
    List<TimerData>? mainPageData,
    List<TimerData>? searchData,
  }) {
    return MainPageState(
      mainPageData: mainPageData ?? this.mainPageData,
      searchData: searchData ?? this.searchData,
    );
  }

  @override

  List<Object?> get props => [mainPageData, searchData,];
}
