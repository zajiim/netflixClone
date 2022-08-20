part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String stateId,
    required List<dynamic> trendingShowsList,
    // required List<NewHotResults> trendingMoviesList,
    required List<dynamic> popularMoviesList,
    required List<dynamic> upcomingMoviesList,
    required List<dynamic> nowPlayingShowsList,
    required List<dynamic> trendingMoviesList,
    required List<dynamic> trendingPeopleList,
    required bool isLoading,
    required bool isError,
  }) = _Initial;

  factory HomeState.initial() => const HomeState(
        stateId: '0',
        trendingShowsList: [],
        trendingMoviesList: [],
        popularMoviesList: [],
        upcomingMoviesList: [],
        nowPlayingShowsList: [],
        trendingPeopleList: [],
        isLoading: false,
        isError: false,
      );
}
