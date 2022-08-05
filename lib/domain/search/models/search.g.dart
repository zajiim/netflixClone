// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Search _$$_SearchFromJson(Map<String, dynamic> json) => _$_Search(
      results: (json['results'] as List<dynamic>)
          .map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SearchToJson(_$_Search instance) => <String, dynamic>{
      'results': instance.results,
    };

_$_Results _$$_ResultsFromJson(Map<String, dynamic> json) => _$_Results(
      posterPath: json['poster_path'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_ResultsToJson(_$_Results instance) =>
    <String, dynamic>{
      'poster_path': instance.posterPath,
      'name': instance.name,
    };
