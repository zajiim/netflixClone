// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new&hot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NewHot _$$_NewHotFromJson(Map<String, dynamic> json) => _$_NewHot(
      results: (json['results'] as List<dynamic>)
          .map((e) => NewHotResults.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NewHotToJson(_$_NewHot instance) => <String, dynamic>{
      'results': instance.results,
    };

_$_NewHotResults _$$_NewHotResultsFromJson(Map<String, dynamic> json) =>
    _$_NewHotResults(
      backdropPath: json['backdrop_path'] as String?,
      firstAirDate: json['first_air_date'] as String?,
      name: json['name'] as String?,
      originalName: json['original_name'] as String?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
      id: json['id'] as int?,
      overview: json['overview'] as String?,
    );

Map<String, dynamic> _$$_NewHotResultsToJson(_$_NewHotResults instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'first_air_date': instance.firstAirDate,
      'name': instance.name,
      'original_name': instance.originalName,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
      'id': instance.id,
      'overview': instance.overview,
    };
