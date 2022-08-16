// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeScreenData _$HomeScreenDataFromJson(Map<String, dynamic> json) {
  return _HomeScreenData.fromJson(json);
}

/// @nodoc
mixin _$HomeScreenData {
  @JsonKey(name: "results")
  List<dynamic> get popularMoviesResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeScreenDataCopyWith<HomeScreenData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenDataCopyWith<$Res> {
  factory $HomeScreenDataCopyWith(
          HomeScreenData value, $Res Function(HomeScreenData) then) =
      _$HomeScreenDataCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "results") List<dynamic> popularMoviesResults});
}

/// @nodoc
class _$HomeScreenDataCopyWithImpl<$Res>
    implements $HomeScreenDataCopyWith<$Res> {
  _$HomeScreenDataCopyWithImpl(this._value, this._then);

  final HomeScreenData _value;
  // ignore: unused_field
  final $Res Function(HomeScreenData) _then;

  @override
  $Res call({
    Object? popularMoviesResults = freezed,
  }) {
    return _then(_value.copyWith(
      popularMoviesResults: popularMoviesResults == freezed
          ? _value.popularMoviesResults
          : popularMoviesResults // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeScreenDataCopyWith<$Res>
    implements $HomeScreenDataCopyWith<$Res> {
  factory _$$_HomeScreenDataCopyWith(
          _$_HomeScreenData value, $Res Function(_$_HomeScreenData) then) =
      __$$_HomeScreenDataCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "results") List<dynamic> popularMoviesResults});
}

/// @nodoc
class __$$_HomeScreenDataCopyWithImpl<$Res>
    extends _$HomeScreenDataCopyWithImpl<$Res>
    implements _$$_HomeScreenDataCopyWith<$Res> {
  __$$_HomeScreenDataCopyWithImpl(
      _$_HomeScreenData _value, $Res Function(_$_HomeScreenData) _then)
      : super(_value, (v) => _then(v as _$_HomeScreenData));

  @override
  _$_HomeScreenData get _value => super._value as _$_HomeScreenData;

  @override
  $Res call({
    Object? popularMoviesResults = freezed,
  }) {
    return _then(_$_HomeScreenData(
      popularMoviesResults: popularMoviesResults == freezed
          ? _value._popularMoviesResults
          : popularMoviesResults // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeScreenData implements _HomeScreenData {
  const _$_HomeScreenData(
      {@JsonKey(name: "results")
          required final List<dynamic> popularMoviesResults})
      : _popularMoviesResults = popularMoviesResults;

  factory _$_HomeScreenData.fromJson(Map<String, dynamic> json) =>
      _$$_HomeScreenDataFromJson(json);

  final List<dynamic> _popularMoviesResults;
  @override
  @JsonKey(name: "results")
  List<dynamic> get popularMoviesResults {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularMoviesResults);
  }

  @override
  String toString() {
    return 'HomeScreenData(popularMoviesResults: $popularMoviesResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeScreenData &&
            const DeepCollectionEquality()
                .equals(other._popularMoviesResults, _popularMoviesResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_popularMoviesResults));

  @JsonKey(ignore: true)
  @override
  _$$_HomeScreenDataCopyWith<_$_HomeScreenData> get copyWith =>
      __$$_HomeScreenDataCopyWithImpl<_$_HomeScreenData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeScreenDataToJson(
      this,
    );
  }
}

abstract class _HomeScreenData implements HomeScreenData {
  const factory _HomeScreenData(
          {@JsonKey(name: "results")
              required final List<dynamic> popularMoviesResults}) =
      _$_HomeScreenData;

  factory _HomeScreenData.fromJson(Map<String, dynamic> json) =
      _$_HomeScreenData.fromJson;

  @override
  @JsonKey(name: "results")
  List<dynamic> get popularMoviesResults;
  @override
  @JsonKey(ignore: true)
  _$$_HomeScreenDataCopyWith<_$_HomeScreenData> get copyWith =>
      throw _privateConstructorUsedError;
}

PopularMoviesResults _$PopularMoviesResultsFromJson(Map<String, dynamic> json) {
  return _PopularMoviesResults.fromJson(json);
}

/// @nodoc
mixin _$PopularMoviesResults {
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PopularMoviesResultsCopyWith<PopularMoviesResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PopularMoviesResultsCopyWith<$Res> {
  factory $PopularMoviesResultsCopyWith(PopularMoviesResults value,
          $Res Function(PopularMoviesResults) then) =
      _$PopularMoviesResultsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "poster_path") String? posterPath});
}

/// @nodoc
class _$PopularMoviesResultsCopyWithImpl<$Res>
    implements $PopularMoviesResultsCopyWith<$Res> {
  _$PopularMoviesResultsCopyWithImpl(this._value, this._then);

  final PopularMoviesResults _value;
  // ignore: unused_field
  final $Res Function(PopularMoviesResults) _then;

  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PopularMoviesResultsCopyWith<$Res>
    implements $PopularMoviesResultsCopyWith<$Res> {
  factory _$$_PopularMoviesResultsCopyWith(_$_PopularMoviesResults value,
          $Res Function(_$_PopularMoviesResults) then) =
      __$$_PopularMoviesResultsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "poster_path") String? posterPath});
}

/// @nodoc
class __$$_PopularMoviesResultsCopyWithImpl<$Res>
    extends _$PopularMoviesResultsCopyWithImpl<$Res>
    implements _$$_PopularMoviesResultsCopyWith<$Res> {
  __$$_PopularMoviesResultsCopyWithImpl(_$_PopularMoviesResults _value,
      $Res Function(_$_PopularMoviesResults) _then)
      : super(_value, (v) => _then(v as _$_PopularMoviesResults));

  @override
  _$_PopularMoviesResults get _value => super._value as _$_PopularMoviesResults;

  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_$_PopularMoviesResults(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PopularMoviesResults implements _PopularMoviesResults {
  const _$_PopularMoviesResults(
      {@JsonKey(name: "poster_path") required this.posterPath});

  factory _$_PopularMoviesResults.fromJson(Map<String, dynamic> json) =>
      _$$_PopularMoviesResultsFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;

  @override
  String toString() {
    return 'PopularMoviesResults(posterPath: $posterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PopularMoviesResults &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(posterPath));

  @JsonKey(ignore: true)
  @override
  _$$_PopularMoviesResultsCopyWith<_$_PopularMoviesResults> get copyWith =>
      __$$_PopularMoviesResultsCopyWithImpl<_$_PopularMoviesResults>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PopularMoviesResultsToJson(
      this,
    );
  }
}

abstract class _PopularMoviesResults implements PopularMoviesResults {
  const factory _PopularMoviesResults(
          {@JsonKey(name: "poster_path") required final String? posterPath}) =
      _$_PopularMoviesResults;

  factory _PopularMoviesResults.fromJson(Map<String, dynamic> json) =
      _$_PopularMoviesResults.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(ignore: true)
  _$$_PopularMoviesResultsCopyWith<_$_PopularMoviesResults> get copyWith =>
      throw _privateConstructorUsedError;
}

UpcomingMoviesResults _$UpcomingMoviesResultsFromJson(
    Map<String, dynamic> json) {
  return _UpcomingMoviesResults.fromJson(json);
}

/// @nodoc
mixin _$UpcomingMoviesResults {
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpcomingMoviesResultsCopyWith<UpcomingMoviesResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpcomingMoviesResultsCopyWith<$Res> {
  factory $UpcomingMoviesResultsCopyWith(UpcomingMoviesResults value,
          $Res Function(UpcomingMoviesResults) then) =
      _$UpcomingMoviesResultsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "poster_path") String? posterPath});
}

/// @nodoc
class _$UpcomingMoviesResultsCopyWithImpl<$Res>
    implements $UpcomingMoviesResultsCopyWith<$Res> {
  _$UpcomingMoviesResultsCopyWithImpl(this._value, this._then);

  final UpcomingMoviesResults _value;
  // ignore: unused_field
  final $Res Function(UpcomingMoviesResults) _then;

  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UpcomingMoviesResultsCopyWith<$Res>
    implements $UpcomingMoviesResultsCopyWith<$Res> {
  factory _$$_UpcomingMoviesResultsCopyWith(_$_UpcomingMoviesResults value,
          $Res Function(_$_UpcomingMoviesResults) then) =
      __$$_UpcomingMoviesResultsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "poster_path") String? posterPath});
}

/// @nodoc
class __$$_UpcomingMoviesResultsCopyWithImpl<$Res>
    extends _$UpcomingMoviesResultsCopyWithImpl<$Res>
    implements _$$_UpcomingMoviesResultsCopyWith<$Res> {
  __$$_UpcomingMoviesResultsCopyWithImpl(_$_UpcomingMoviesResults _value,
      $Res Function(_$_UpcomingMoviesResults) _then)
      : super(_value, (v) => _then(v as _$_UpcomingMoviesResults));

  @override
  _$_UpcomingMoviesResults get _value =>
      super._value as _$_UpcomingMoviesResults;

  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_$_UpcomingMoviesResults(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UpcomingMoviesResults implements _UpcomingMoviesResults {
  const _$_UpcomingMoviesResults(
      {@JsonKey(name: "poster_path") required this.posterPath});

  factory _$_UpcomingMoviesResults.fromJson(Map<String, dynamic> json) =>
      _$$_UpcomingMoviesResultsFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;

  @override
  String toString() {
    return 'UpcomingMoviesResults(posterPath: $posterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpcomingMoviesResults &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(posterPath));

  @JsonKey(ignore: true)
  @override
  _$$_UpcomingMoviesResultsCopyWith<_$_UpcomingMoviesResults> get copyWith =>
      __$$_UpcomingMoviesResultsCopyWithImpl<_$_UpcomingMoviesResults>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpcomingMoviesResultsToJson(
      this,
    );
  }
}

abstract class _UpcomingMoviesResults implements UpcomingMoviesResults {
  const factory _UpcomingMoviesResults(
          {@JsonKey(name: "poster_path") required final String? posterPath}) =
      _$_UpcomingMoviesResults;

  factory _UpcomingMoviesResults.fromJson(Map<String, dynamic> json) =
      _$_UpcomingMoviesResults.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(ignore: true)
  _$$_UpcomingMoviesResultsCopyWith<_$_UpcomingMoviesResults> get copyWith =>
      throw _privateConstructorUsedError;
}

NowPlayingResults _$NowPlayingResultsFromJson(Map<String, dynamic> json) {
  return _NowPlayingResults.fromJson(json);
}

/// @nodoc
mixin _$NowPlayingResults {
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NowPlayingResultsCopyWith<NowPlayingResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingResultsCopyWith<$Res> {
  factory $NowPlayingResultsCopyWith(
          NowPlayingResults value, $Res Function(NowPlayingResults) then) =
      _$NowPlayingResultsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "poster_path") String? posterPath});
}

/// @nodoc
class _$NowPlayingResultsCopyWithImpl<$Res>
    implements $NowPlayingResultsCopyWith<$Res> {
  _$NowPlayingResultsCopyWithImpl(this._value, this._then);

  final NowPlayingResults _value;
  // ignore: unused_field
  final $Res Function(NowPlayingResults) _then;

  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_NowPlayingResultsCopyWith<$Res>
    implements $NowPlayingResultsCopyWith<$Res> {
  factory _$$_NowPlayingResultsCopyWith(_$_NowPlayingResults value,
          $Res Function(_$_NowPlayingResults) then) =
      __$$_NowPlayingResultsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "poster_path") String? posterPath});
}

/// @nodoc
class __$$_NowPlayingResultsCopyWithImpl<$Res>
    extends _$NowPlayingResultsCopyWithImpl<$Res>
    implements _$$_NowPlayingResultsCopyWith<$Res> {
  __$$_NowPlayingResultsCopyWithImpl(
      _$_NowPlayingResults _value, $Res Function(_$_NowPlayingResults) _then)
      : super(_value, (v) => _then(v as _$_NowPlayingResults));

  @override
  _$_NowPlayingResults get _value => super._value as _$_NowPlayingResults;

  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_$_NowPlayingResults(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NowPlayingResults implements _NowPlayingResults {
  const _$_NowPlayingResults(
      {@JsonKey(name: "poster_path") required this.posterPath});

  factory _$_NowPlayingResults.fromJson(Map<String, dynamic> json) =>
      _$$_NowPlayingResultsFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;

  @override
  String toString() {
    return 'NowPlayingResults(posterPath: $posterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NowPlayingResults &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(posterPath));

  @JsonKey(ignore: true)
  @override
  _$$_NowPlayingResultsCopyWith<_$_NowPlayingResults> get copyWith =>
      __$$_NowPlayingResultsCopyWithImpl<_$_NowPlayingResults>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NowPlayingResultsToJson(
      this,
    );
  }
}

abstract class _NowPlayingResults implements NowPlayingResults {
  const factory _NowPlayingResults(
          {@JsonKey(name: "poster_path") required final String? posterPath}) =
      _$_NowPlayingResults;

  factory _NowPlayingResults.fromJson(Map<String, dynamic> json) =
      _$_NowPlayingResults.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(ignore: true)
  _$$_NowPlayingResultsCopyWith<_$_NowPlayingResults> get copyWith =>
      throw _privateConstructorUsedError;
}

TopRatedResults _$TopRatedResultsFromJson(Map<String, dynamic> json) {
  return _TopRatedResults.fromJson(json);
}

/// @nodoc
mixin _$TopRatedResults {
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TopRatedResultsCopyWith<TopRatedResults> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopRatedResultsCopyWith<$Res> {
  factory $TopRatedResultsCopyWith(
          TopRatedResults value, $Res Function(TopRatedResults) then) =
      _$TopRatedResultsCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: "poster_path") String? posterPath});
}

/// @nodoc
class _$TopRatedResultsCopyWithImpl<$Res>
    implements $TopRatedResultsCopyWith<$Res> {
  _$TopRatedResultsCopyWithImpl(this._value, this._then);

  final TopRatedResults _value;
  // ignore: unused_field
  final $Res Function(TopRatedResults) _then;

  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_value.copyWith(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_TopRatedResultsCopyWith<$Res>
    implements $TopRatedResultsCopyWith<$Res> {
  factory _$$_TopRatedResultsCopyWith(
          _$_TopRatedResults value, $Res Function(_$_TopRatedResults) then) =
      __$$_TopRatedResultsCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: "poster_path") String? posterPath});
}

/// @nodoc
class __$$_TopRatedResultsCopyWithImpl<$Res>
    extends _$TopRatedResultsCopyWithImpl<$Res>
    implements _$$_TopRatedResultsCopyWith<$Res> {
  __$$_TopRatedResultsCopyWithImpl(
      _$_TopRatedResults _value, $Res Function(_$_TopRatedResults) _then)
      : super(_value, (v) => _then(v as _$_TopRatedResults));

  @override
  _$_TopRatedResults get _value => super._value as _$_TopRatedResults;

  @override
  $Res call({
    Object? posterPath = freezed,
  }) {
    return _then(_$_TopRatedResults(
      posterPath: posterPath == freezed
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TopRatedResults implements _TopRatedResults {
  const _$_TopRatedResults(
      {@JsonKey(name: "poster_path") required this.posterPath});

  factory _$_TopRatedResults.fromJson(Map<String, dynamic> json) =>
      _$$_TopRatedResultsFromJson(json);

  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;

  @override
  String toString() {
    return 'TopRatedResults(posterPath: $posterPath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TopRatedResults &&
            const DeepCollectionEquality()
                .equals(other.posterPath, posterPath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(posterPath));

  @JsonKey(ignore: true)
  @override
  _$$_TopRatedResultsCopyWith<_$_TopRatedResults> get copyWith =>
      __$$_TopRatedResultsCopyWithImpl<_$_TopRatedResults>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TopRatedResultsToJson(
      this,
    );
  }
}

abstract class _TopRatedResults implements TopRatedResults {
  const factory _TopRatedResults(
          {@JsonKey(name: "poster_path") required final String? posterPath}) =
      _$_TopRatedResults;

  factory _TopRatedResults.fromJson(Map<String, dynamic> json) =
      _$_TopRatedResults.fromJson;

  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(ignore: true)
  _$$_TopRatedResultsCopyWith<_$_TopRatedResults> get copyWith =>
      throw _privateConstructorUsedError;
}
