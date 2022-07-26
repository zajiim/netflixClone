import 'package:freezed_annotation/freezed_annotation.dart';

part 'home.g.dart';
part 'home.freezed.dart';

@freezed
class HomeScreenData with _$HomeScreenData {
  const factory HomeScreenData({
    @JsonKey(name: "results") required List results,
  }) = _HomeScreenData;

  factory HomeScreenData.fromJson(Map<String, dynamic> json) =>
      _$HomeScreenDataFromJson(json);
}



@freezed
class PopularMoviesResults with _$PopularMoviesResults {
  const factory PopularMoviesResults({
    @JsonKey(name: "poster_path") required String? posterPath,
    required String? overview,
    @JsonKey(name: "backdrop_path") required String? backdropPath,
  }) = _PopularMoviesResults;

  factory PopularMoviesResults.fromJson(Map<String, dynamic> json) =>
      _$PopularMoviesResultsFromJson(json);
}

@freezed
class UpcomingMoviesResults with _$UpcomingMoviesResults {
  const factory UpcomingMoviesResults({
    @JsonKey(name: "poster_path") required String? posterPath,
  }) = _UpcomingMoviesResults;

  factory UpcomingMoviesResults.fromJson(Map<String, dynamic> json) =>
      _$UpcomingMoviesResultsFromJson(json);
}

@freezed
class NowPlayingResults with _$NowPlayingResults {
  const factory NowPlayingResults({
    @JsonKey(name: "poster_path") required String? posterPath,
  }) = _NowPlayingResults;

  factory NowPlayingResults.fromJson(Map<String, dynamic> json) =>
      _$NowPlayingResultsFromJson(json);
}


@freezed
class TopRatedResults with _$TopRatedResults{
  const factory TopRatedResults({
    @JsonKey(name: "poster_path") required String? posterPath,
  }) = _TopRatedResults;

  factory TopRatedResults.fromJson(Map<String, dynamic> json) => _$TopRatedResultsFromJson(json);
}

@freezed
class TopPeople with _$TopPeople{
  const factory TopPeople({
    @JsonKey(name: "name") required String? name,
    @JsonKey(name: "profile_path") required String profileImagePath,
  }) = _TopPeople;

  factory TopPeople.fromJson(Map<String, dynamic> json) => _$TopPeopleFromJson(json);
}