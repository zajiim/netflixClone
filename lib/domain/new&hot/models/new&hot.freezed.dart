// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'new&hot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewHot _$NewHotFromJson(Map<String, dynamic> json) {
  return _NewHot.fromJson(json);
}

/// @nodoc
mixin _$NewHot {
  List<NewHotResults> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewHotCopyWith<NewHot> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewHotCopyWith<$Res> {
  factory $NewHotCopyWith(NewHot value, $Res Function(NewHot) then) =
      _$NewHotCopyWithImpl<$Res>;
  $Res call({List<NewHotResults> results});
}

/// @nodoc
class _$NewHotCopyWithImpl<$Res> implements $NewHotCopyWith<$Res> {
  _$NewHotCopyWithImpl(this._value, this._then);

  final NewHot _value;
  // ignore: unused_field
  final $Res Function(NewHot) _then;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<NewHotResults>,
    ));
  }
}

/// @nodoc
abstract class _$$_NewHotCopyWith<$Res> implements $NewHotCopyWith<$Res> {
  factory _$$_NewHotCopyWith(_$_NewHot value, $Res Function(_$_NewHot) then) =
      __$$_NewHotCopyWithImpl<$Res>;
  @override
  $Res call({List<NewHotResults> results});
}

/// @nodoc
class __$$_NewHotCopyWithImpl<$Res> extends _$NewHotCopyWithImpl<$Res>
    implements _$$_NewHotCopyWith<$Res> {
  __$$_NewHotCopyWithImpl(_$_NewHot _value, $Res Function(_$_NewHot) _then)
      : super(_value, (v) => _then(v as _$_NewHot));

  @override
  _$_NewHot get _value => super._value as _$_NewHot;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_$_NewHot(
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<NewHotResults>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewHot implements _NewHot {
  const _$_NewHot({required final List<NewHotResults> results})
      : _results = results;

  factory _$_NewHot.fromJson(Map<String, dynamic> json) =>
      _$$_NewHotFromJson(json);

  final List<NewHotResults> _results;
  @override
  List<NewHotResults> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'NewHot(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewHot &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_NewHotCopyWith<_$_NewHot> get copyWith =>
      __$$_NewHotCopyWithImpl<_$_NewHot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewHotToJson(
      this,
    );
  }
}

abstract class _NewHot implements NewHot {
  const factory _NewHot({required final List<NewHotResults> results}) =
      _$_NewHot;

  factory _NewHot.fromJson(Map<String, dynamic> json) = _$_NewHot.fromJson;

  @override
  List<NewHotResults> get results;
  @override
  @JsonKey(ignore: true)
  _$$_NewHotCopyWith<_$_NewHot> get copyWith =>
      throw _privateConstructorUsedError;
}

NewHotResults _$NewHotResultsFromJson(Map<String, dynamic> json) {
  return _NewHotResults.fromJson(json);
}

/// @nodoc
mixin _$NewHotResults {
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: "first_air_date")
  String? get firstAirDate => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "original_name")
  String? get originalName => throw _privateConstructorUsedError;
  @JsonKey(name: "original_title")
  String? get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String? get overview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewHotResultsCopyWith<NewHotResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewHotResultsCopyWith<$Res> {
  factory $NewHotResultsCopyWith(
          NewHotResults value, $Res Function(NewHotResults) then) =
      _$NewHotResultsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "first_air_date") String? firstAirDate,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "original_name") String? originalName,
      @JsonKey(name: "original_title") String? originalTitle,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "overview") String? overview});
}

/// @nodoc
class _$NewHotResultsCopyWithImpl<$Res>
    implements $NewHotResultsCopyWith<$Res> {
  _$NewHotResultsCopyWithImpl(this._value, this._then);

  final NewHotResults _value;
  // ignore: unused_field
  final $Res Function(NewHotResults) _then;

  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? firstAirDate = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
    Object? originalTitle = freezed,
    Object? posterPath = freezed,
    Object? id = freezed,
    Object? overview = freezed,
  }) {
    return _then(_value.copyWith(
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      firstAirDate: firstAirDate == freezed
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: originalName == freezed
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_NewHotResultsCopyWith<$Res>
    implements $NewHotResultsCopyWith<$Res> {
  factory _$$_NewHotResultsCopyWith(
          _$_NewHotResults value, $Res Function(_$_NewHotResults) then) =
      __$$_NewHotResultsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "first_air_date") String? firstAirDate,
      @JsonKey(name: "name") String? name,
      @JsonKey(name: "original_name") String? originalName,
      @JsonKey(name: "original_title") String? originalTitle,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "id") int? id,
      @JsonKey(name: "overview") String? overview});
}

/// @nodoc
class __$$_NewHotResultsCopyWithImpl<$Res>
    extends _$NewHotResultsCopyWithImpl<$Res>
    implements _$$_NewHotResultsCopyWith<$Res> {
  __$$_NewHotResultsCopyWithImpl(
      _$_NewHotResults _value, $Res Function(_$_NewHotResults) _then)
      : super(_value, (v) => _then(v as _$_NewHotResults));

  @override
  _$_NewHotResults get _value => super._value as _$_NewHotResults;

  @override
  $Res call({
    Object? backdropPath = freezed,
    Object? firstAirDate = freezed,
    Object? name = freezed,
    Object? originalName = freezed,
    Object? originalTitle = freezed,
    Object? posterPath = freezed,
    Object? id = freezed,
    Object? overview = freezed,
  }) {
    return _then(_$_NewHotResults(
      backdropPath: backdropPath == freezed
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      firstAirDate: firstAirDate == freezed
          ? _value.firstAirDate
          : firstAirDate // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originalName: originalName == freezed
          ? _value.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String?,
      originalTitle: originalTitle == freezed
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      overview: overview == freezed
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NewHotResults implements _NewHotResults {
  const _$_NewHotResults(
      {@JsonKey(name: "backdrop_path") required this.backdropPath,
      @JsonKey(name: "first_air_date") required this.firstAirDate,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "original_name") required this.originalName,
      @JsonKey(name: "original_title") required this.originalTitle,
      @JsonKey(name: "poster_path") required this.posterPath,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "overview") required this.overview});

  factory _$_NewHotResults.fromJson(Map<String, dynamic> json) =>
      _$$_NewHotResultsFromJson(json);

  @override
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  @override
  @JsonKey(name: "first_air_date")
  final String? firstAirDate;
  @override
  @JsonKey(name: "name")
  final String? name;
  @override
  @JsonKey(name: "original_name")
  final String? originalName;
  @override
  @JsonKey(name: "original_title")
  final String? originalTitle;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "overview")
  final String? overview;

  @override
  String toString() {
    return 'NewHotResults(backdropPath: $backdropPath, firstAirDate: $firstAirDate, name: $name, originalName: $originalName, originalTitle: $originalTitle, posterPath: $posterPath, id: $id, overview: $overview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewHotResults &&
            const DeepCollectionEquality()
                .equals(other.backdropPath, backdropPath) &&
            const DeepCollectionEquality()
                .equals(other.firstAirDate, firstAirDate) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.originalName, originalName) &&
            const DeepCollectionEquality()
                .equals(other.originalTitle, originalTitle) &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.overview, overview));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(backdropPath),
      const DeepCollectionEquality().hash(firstAirDate),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(originalName),
      const DeepCollectionEquality().hash(originalTitle),
      const DeepCollectionEquality().hash(posterPath),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(overview));

  @JsonKey(ignore: true)
  @override
  _$$_NewHotResultsCopyWith<_$_NewHotResults> get copyWith =>
      __$$_NewHotResultsCopyWithImpl<_$_NewHotResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewHotResultsToJson(
      this,
    );
  }
}

abstract class _NewHotResults implements NewHotResults {
  const factory _NewHotResults(
          {@JsonKey(name: "backdrop_path") required final String? backdropPath,
          @JsonKey(name: "first_air_date") required final String? firstAirDate,
          @JsonKey(name: "name") required final String? name,
          @JsonKey(name: "original_name") required final String? originalName,
          @JsonKey(name: "original_title") required final String? originalTitle,
          @JsonKey(name: "poster_path") required final String? posterPath,
          @JsonKey(name: "id") required final int? id,
          @JsonKey(name: "overview") required final String? overview}) =
      _$_NewHotResults;

  factory _NewHotResults.fromJson(Map<String, dynamic> json) =
      _$_NewHotResults.fromJson;

  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  @override
  @JsonKey(name: "first_air_date")
  String? get firstAirDate;
  @override
  @JsonKey(name: "name")
  String? get name;
  @override
  @JsonKey(name: "original_name")
  String? get originalName;
  @override
  @JsonKey(name: "original_title")
  String? get originalTitle;
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "overview")
  String? get overview;
  @override
  @JsonKey(ignore: true)
  _$$_NewHotResultsCopyWith<_$_NewHotResults> get copyWith =>
      throw _privateConstructorUsedError;
}
