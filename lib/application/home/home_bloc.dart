import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_bloc/domain/home/home_service.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  // final NewAndHotService _homeService;
  final HomeService _homeServiceData;

  HomeBloc(
    // this._homeService,
    this._homeServiceData,
  ) : super(HomeState.initial()) {
    on<GetHomeSreenTrending>((event, emit) async {
      emit(state.copyWith(
        trendingMoviesList: [],
        trendingShowsList: [],
        upcomingMoviesList: [],
        nowPlayingShowsList: [],
        popularMoviesList: [],
        isError: false,
        isLoading: true,
      ));
      // final _trendingMoviesResult = await _homeService.getHotAndNewMovieData();
      // final _trendingShowsResult = await _homeService.getHotAndNewShowData();
      final _trendingMoviesResult = await _homeServiceData.getTopRatedMovies();
      final _trendingShowsResult = await _homeServiceData.getTopRatedShows();
      final _upcomingMoviesResult = await _homeServiceData.getUpcomingMovies();
      final _nowPlayingMoviesResult =
          await _homeServiceData.getNowPlayingMovies();
      final _allTimePopularResult = await _homeServiceData.getPopularMovies();
      final _popularPeopleResult = await _homeServiceData.getPopularPeople();

      final _state1 = _trendingMoviesResult.fold((failure) {
        return HomeState(
            stateId: DateTime.now().millisecondsSinceEpoch.toString(),
            trendingShowsList: [],
            trendingMoviesList: [],
            upcomingMoviesList: [],
            nowPlayingShowsList: [],
            popularMoviesList: [],
            trendingPeopleList: [],
            isLoading: false,
            isError: true);
      }, (success) {
        return HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          trendingShowsList: success.results,
          trendingMoviesList: success.results,
          upcomingMoviesList: state.upcomingMoviesList,
          nowPlayingShowsList: state.nowPlayingShowsList,
          popularMoviesList: state.popularMoviesList,
          trendingPeopleList: state.trendingPeopleList,
          isLoading: false,
          isError: false,
        );
      });
      emit(_state1);

      final _state2 = _trendingShowsResult.fold((failure) {
        return HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          trendingShowsList: [],
          trendingMoviesList: [],
          upcomingMoviesList: [],
          nowPlayingShowsList: [],
          popularMoviesList: [],
          trendingPeopleList: [],
          isLoading: false,
          isError: true,
        );
      }, (success) {
        return HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          trendingMoviesList: state.trendingShowsList,
          trendingShowsList: success.results,
          upcomingMoviesList: state.upcomingMoviesList,
          popularMoviesList: state.popularMoviesList,
          nowPlayingShowsList: state.nowPlayingShowsList,
          trendingPeopleList: state.trendingPeopleList,
          isLoading: false,
          isError: false,
        );
      });
      emit(_state2);

      final _state3 = _upcomingMoviesResult.fold((failure) {
        return HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          trendingShowsList: [],
          trendingMoviesList: [],
          popularMoviesList: [],
          upcomingMoviesList: [],
          nowPlayingShowsList: [],
          trendingPeopleList: [],
          isLoading: false,
          isError: true,
        );
      }, (success) {
        return HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          trendingShowsList: state.trendingMoviesList,
          trendingMoviesList: state.trendingShowsList,
          popularMoviesList: state.popularMoviesList,
          upcomingMoviesList: success.results,
          nowPlayingShowsList: state.nowPlayingShowsList,
          trendingPeopleList: state.trendingPeopleList,
          isLoading: false,
          isError: false,
        );
      });

      emit(_state3);

      final _state4 = _nowPlayingMoviesResult.fold((failure) {
        return HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          trendingShowsList: [],
          trendingMoviesList: [],
          popularMoviesList: [],
          upcomingMoviesList: [],
          nowPlayingShowsList: [],
          trendingPeopleList: [],
          isLoading: false,
          isError: true,
        );
      }, (success) {
        return HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          trendingShowsList: state.trendingShowsList,
          trendingMoviesList: state.trendingMoviesList,
          popularMoviesList: state.popularMoviesList,
          upcomingMoviesList: state.upcomingMoviesList,
          nowPlayingShowsList: success.results,
          trendingPeopleList: state.trendingPeopleList,
          isLoading: false,
          isError: false,
        );
      });

      emit(_state4);

      final _state5 = _allTimePopularResult.fold((failure) {
        return HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          trendingShowsList: [],
          trendingMoviesList: [],
          popularMoviesList: [],
          upcomingMoviesList: [],
          nowPlayingShowsList: [],
          trendingPeopleList: [],
          isLoading: false,
          isError: true,
        );
      }, (success) {
        return HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          trendingShowsList: state.trendingShowsList,
          trendingMoviesList: state.trendingMoviesList,
          popularMoviesList: success.results,
          upcomingMoviesList: state.upcomingMoviesList,
          nowPlayingShowsList: state.nowPlayingShowsList,
          trendingPeopleList: state.trendingPeopleList,
          isLoading: false,
          isError: false,
        );
      });

      emit(_state5);

      final _state6 = _popularPeopleResult.fold((failure) {
        return HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          trendingShowsList: [],
          trendingMoviesList: [],
          popularMoviesList: [],
          upcomingMoviesList: [],
          nowPlayingShowsList: [],
          trendingPeopleList: [],
          isLoading: false,
          isError: true,
        );
      }, (success) {
        return HomeState(
          stateId: DateTime.now().millisecondsSinceEpoch.toString(),
          trendingShowsList: state.trendingShowsList,
          trendingMoviesList: state.trendingMoviesList,
          popularMoviesList: success.results,
          upcomingMoviesList: state.upcomingMoviesList,
          nowPlayingShowsList: state.nowPlayingShowsList,
          trendingPeopleList: success.results,
          isLoading: false,
          isError: false,
        );
      });

      emit(_state6);
    });
  }
}
