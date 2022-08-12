// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'search.g.dart';

// @JsonSerializable()
// class Search {
//   @JsonKey(name: "results")
//   List<Result>? results;

//   Search({this.results = const []});

//   factory Search.fromJson(Map<String, dynamic> json) => Search(
//         results: (json['results'] as List<dynamic>?)
//             ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
//             .toList(),
//       );

//   Map<String, dynamic> toJson() => {
//         'results': results?.map((e) => e.toJson()).toList(),
//       };
// }

// @JsonSerializable()
// class Result {
//   @JsonKey(name: "name")
//   String? name;
//   @JsonKey(name: "poster_path")
//   String? posterPath;
//   @JsonKey(name: "original_title")
//   String? originalTitle;
//   @JsonKey(name: "overview")
//   String? overview;
//   @JsonKey(name: "release_date")
//   String? releaseDate;
//   @JsonKey(name: "vote_average")
//   String? voting;

//   Result({
//     this.name,
//     this.posterPath,
//   });

//   factory Result.fromJson(Map<String, dynamic> json) => Result(
//         name: json['name'] as String?,
//         posterPath: json['poster_path'] as String?,
//       );

//   Map<String, dynamic> toJson() => {
//         'name': name,
//         'poster_path': posterPath,
//       };
// }

import 'package:freezed_annotation/freezed_annotation.dart';

part 'search.freezed.dart';
part 'search.g.dart';

@freezed
class Search with _$Search {
  const factory Search({
    required List<Result> results,
  }) = _Search;

  factory Search.fromJson(Map<String, dynamic> json) => _$SearchFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    @JsonKey(name: "poster_path") required String? posterPath,
    @JsonKey(name: "name") required String? name,
    @JsonKey(name: "first_air_date") required String? releaseDate,
    @JsonKey(name: "vote_average") required double? voteAverage,
    @JsonKey(name: "overview") required String? overview,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) =>
      _$ResultFromJson(json);
}
