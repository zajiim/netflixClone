import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_bloc/core/failures/main_failures.dart';
import 'package:netflix_bloc/domain/downloads/downloads_service.dart';
import 'package:netflix_bloc/domain/downloads/models/downloads.dart';
import 'package:netflix_bloc/domain/search/models/search.dart';
import 'package:netflix_bloc/domain/search/search_service.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final DownloadsService _downloadsService;
  final SearchService _searchService;

  SearchBloc(
    this._downloadsService,
    this._searchService,
  ) : super(SearchState.initial()) {
    on<Initialize>((event, emit) async {
      if (state.idleList.isNotEmpty) {
        emit(state.copyWith(
          idleList: state.idleList,
          searchResultList: [],
          isLoading: false,
          isError: false,
        ));
        return;
      }
      emit(state.copyWith(
        idleList: [],
        searchResultList: [],
        isLoading: true,
        isError: false,
      ));
      final downloadService = await _downloadsService.getDownloadsImages();

      //folding

      emit(downloadService.fold(
          (failure) => state.copyWith(
                idleList: [],
                searchResultList: [],
                isLoading: false,
                isError: true,
              ),
          (List<Downloads> list) => state.copyWith(
                idleList: list,
                searchResultList: [],
                isLoading: false,
                isError: false,
              )));
    });
    on<TvShowQuery>((event, emit) async {
      final _result =
          await _searchService.searchTvShows(tvShowQuery: event.tvShowQuery);
      print(_result);
    });
  }
}
