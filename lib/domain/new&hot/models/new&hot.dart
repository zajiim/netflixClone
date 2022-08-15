import 'package:freezed_annotation/freezed_annotation.dart';

part 'new&hot.freezed.dart';
part 'new&hot.g.dart';

@freezed
class NewHot with _$NewHot {
  const factory NewHot({
    required List<NewHotResults> results,
  }) = _NewHot;

  factory NewHot.fromJson(Map<String, dynamic> json) => _$NewHotFromJson(json);
}

@freezed
class NewHotResults with _$NewHotResults {
  const factory NewHotResults({
    @JsonKey(name: "backdrop_path") required String? backdropPath,
    @JsonKey(name: "first_air_date") required String? firstAirDate,
    @JsonKey(name: "name") required String? name,
    @JsonKey(name: "original_name") required String? originalName,
    @JsonKey(name: "original_title") required String? originalTitle,
    @JsonKey(name: "poster_path") required String? posterPath,
    @JsonKey(name: "id") required int? id,
    @JsonKey(name: "overview") required String? overview,
  }) = _NewHotResults;

  factory NewHotResults.fromJson(Map<String, dynamic> json) =>
      _$NewHotResultsFromJson(json);
}
