part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.initialize() =Initialize;
  const factory SearchEvent.searchTvShows({
    required String tvShowQuery,
  }) =TvShowQuery;
}
