import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_bloc/domain/new&hot/new_&_hot_service.dart';

import '../../domain/new&hot/models/new&hot.dart';

part 'new_and_hot_event.dart';
part 'new_and_hot_state.dart';
part 'new_and_hot_bloc.freezed.dart';

@injectable
class NewAndHotBloc extends Bloc<NewAndHotEvent, NewAndHotState> {
  final NewAndHotService _newAndHotService;
  NewAndHotBloc(this._newAndHotService) : super(NewAndHotState.initial()) {
    on<ComingSoonLoaded>((event, emit) async {
      emit(state.copyWith(
        comingSoonList: [],
        everyOnesWatchingList: [],
        isLoading: true,
        isError: false,
      ));

      final _tvShowsresult = await _newAndHotService.getHotAndNewShowData();

      emit(_tvShowsresult.fold(
        (failure) => state.copyWith(
          comingSoonList: [],
          everyOnesWatchingList: [],
          isLoading: false,
          isError: true,
        ),
        (NewHot success) => state.copyWith(
          comingSoonList: success.results,
          everyOnesWatchingList: state.everyOnesWatchingList,
          isLoading: false,
          isError: false,
        ),
      ));
    });
    on<EveryOnesWatchingLoaded>((event, emit) async {
      emit(state.copyWith(
        comingSoonList: [],
        everyOnesWatchingList: [],
        isLoading: true,
        isError: false,
      ));

      final _moviesResult = await _newAndHotService.getHotAndNewMovieData();

      emit(_moviesResult.fold(
        (failure) => state.copyWith(
          comingSoonList: [],
          everyOnesWatchingList: [],
          isLoading: false,
          isError: true,
        ),
        (NewHot success) => state.copyWith(
          comingSoonList: state.comingSoonList,
          everyOnesWatchingList: success.results,
          isLoading: false,
          isError: false,
        ),
      ));
    });
  }
}
