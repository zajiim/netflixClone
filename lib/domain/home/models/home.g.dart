// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeScreenData _$$_HomeScreenDataFromJson(Map<String, dynamic> json) =>
    _$_HomeScreenData(
      results: json['results'] as List<dynamic>,
    );

Map<String, dynamic> _$$_HomeScreenDataToJson(_$_HomeScreenData instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$_PopularMoviesResults _$$_PopularMoviesResultsFromJson(
        Map<String, dynamic> json) =>
    _$_PopularMoviesResults(
      posterPath: json['poster_path'] as String?,
      overview: json['overview'] as String?,
      backdropPath: json['backdrop_path'] as String?,
    );

Map<String, dynamic> _$$_PopularMoviesResultsToJson(
        _$_PopularMoviesResults instance) =>
    <String, dynamic>{
      'poster_path': instance.posterPath,
      'overview': instance.overview,
      'backdrop_path': instance.backdropPath,
    };

_$_UpcomingMoviesResults _$$_UpcomingMoviesResultsFromJson(
        Map<String, dynamic> json) =>
    _$_UpcomingMoviesResults(
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$$_UpcomingMoviesResultsToJson(
        _$_UpcomingMoviesResults instance) =>
    <String, dynamic>{
      'poster_path': instance.posterPath,
    };

_$_NowPlayingResults _$$_NowPlayingResultsFromJson(Map<String, dynamic> json) =>
    _$_NowPlayingResults(
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$$_NowPlayingResultsToJson(
        _$_NowPlayingResults instance) =>
    <String, dynamic>{
      'poster_path': instance.posterPath,
    };

_$_TopRatedResults _$$_TopRatedResultsFromJson(Map<String, dynamic> json) =>
    _$_TopRatedResults(
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$$_TopRatedResultsToJson(_$_TopRatedResults instance) =>
    <String, dynamic>{
      'poster_path': instance.posterPath,
    };

_$_TopPeople _$$_TopPeopleFromJson(Map<String, dynamic> json) => _$_TopPeople(
      name: json['name'] as String?,
      profileImagePath: json['profile_path'] as String,
    );

Map<String, dynamic> _$$_TopPeopleToJson(_$_TopPeople instance) =>
    <String, dynamic>{
      'name': instance.name,
      'profile_path': instance.profileImagePath,
    };
