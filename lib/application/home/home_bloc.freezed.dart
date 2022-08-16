// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeSreenTrending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getHomeSreenTrending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeSreenTrending,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeSreenTrending value) getHomeSreenTrending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetHomeSreenTrending value)? getHomeSreenTrending,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeSreenTrending value)? getHomeSreenTrending,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class _$$GetHomeSreenTrendingCopyWith<$Res> {
  factory _$$GetHomeSreenTrendingCopyWith(_$GetHomeSreenTrending value,
          $Res Function(_$GetHomeSreenTrending) then) =
      __$$GetHomeSreenTrendingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetHomeSreenTrendingCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$$GetHomeSreenTrendingCopyWith<$Res> {
  __$$GetHomeSreenTrendingCopyWithImpl(_$GetHomeSreenTrending _value,
      $Res Function(_$GetHomeSreenTrending) _then)
      : super(_value, (v) => _then(v as _$GetHomeSreenTrending));

  @override
  _$GetHomeSreenTrending get _value => super._value as _$GetHomeSreenTrending;
}

/// @nodoc

class _$GetHomeSreenTrending implements GetHomeSreenTrending {
  const _$GetHomeSreenTrending();

  @override
  String toString() {
    return 'HomeEvent.getHomeSreenTrending()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetHomeSreenTrending);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getHomeSreenTrending,
  }) {
    return getHomeSreenTrending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getHomeSreenTrending,
  }) {
    return getHomeSreenTrending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getHomeSreenTrending,
    required TResult orElse(),
  }) {
    if (getHomeSreenTrending != null) {
      return getHomeSreenTrending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetHomeSreenTrending value) getHomeSreenTrending,
  }) {
    return getHomeSreenTrending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetHomeSreenTrending value)? getHomeSreenTrending,
  }) {
    return getHomeSreenTrending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetHomeSreenTrending value)? getHomeSreenTrending,
    required TResult orElse(),
  }) {
    if (getHomeSreenTrending != null) {
      return getHomeSreenTrending(this);
    }
    return orElse();
  }
}

abstract class GetHomeSreenTrending implements HomeEvent {
  const factory GetHomeSreenTrending() = _$GetHomeSreenTrending;
}

/// @nodoc
mixin _$HomeState {
  String get stateId => throw _privateConstructorUsedError;
  List<dynamic> get trendingShowsList =>
      throw _privateConstructorUsedError; // required List<NewHotResults> trendingMoviesList,
  List<dynamic> get popularMoviesList => throw _privateConstructorUsedError;
  List<dynamic> get upcomingMoviesList => throw _privateConstructorUsedError;
  List<dynamic> get nowPlayingShowsList => throw _privateConstructorUsedError;
  List<dynamic> get trendingMoviesList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {String stateId,
      List<dynamic> trendingShowsList,
      List<dynamic> popularMoviesList,
      List<dynamic> upcomingMoviesList,
      List<dynamic> nowPlayingShowsList,
      List<dynamic> trendingMoviesList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? stateId = freezed,
    Object? trendingShowsList = freezed,
    Object? popularMoviesList = freezed,
    Object? upcomingMoviesList = freezed,
    Object? nowPlayingShowsList = freezed,
    Object? trendingMoviesList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_value.copyWith(
      stateId: stateId == freezed
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      trendingShowsList: trendingShowsList == freezed
          ? _value.trendingShowsList
          : trendingShowsList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      popularMoviesList: popularMoviesList == freezed
          ? _value.popularMoviesList
          : popularMoviesList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      upcomingMoviesList: upcomingMoviesList == freezed
          ? _value.upcomingMoviesList
          : upcomingMoviesList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      nowPlayingShowsList: nowPlayingShowsList == freezed
          ? _value.nowPlayingShowsList
          : nowPlayingShowsList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      trendingMoviesList: trendingMoviesList == freezed
          ? _value.trendingMoviesList
          : trendingMoviesList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {String stateId,
      List<dynamic> trendingShowsList,
      List<dynamic> popularMoviesList,
      List<dynamic> upcomingMoviesList,
      List<dynamic> nowPlayingShowsList,
      List<dynamic> trendingMoviesList,
      bool isLoading,
      bool isError});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? stateId = freezed,
    Object? trendingShowsList = freezed,
    Object? popularMoviesList = freezed,
    Object? upcomingMoviesList = freezed,
    Object? nowPlayingShowsList = freezed,
    Object? trendingMoviesList = freezed,
    Object? isLoading = freezed,
    Object? isError = freezed,
  }) {
    return _then(_$_Initial(
      stateId: stateId == freezed
          ? _value.stateId
          : stateId // ignore: cast_nullable_to_non_nullable
              as String,
      trendingShowsList: trendingShowsList == freezed
          ? _value._trendingShowsList
          : trendingShowsList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      popularMoviesList: popularMoviesList == freezed
          ? _value._popularMoviesList
          : popularMoviesList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      upcomingMoviesList: upcomingMoviesList == freezed
          ? _value._upcomingMoviesList
          : upcomingMoviesList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      nowPlayingShowsList: nowPlayingShowsList == freezed
          ? _value._nowPlayingShowsList
          : nowPlayingShowsList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      trendingMoviesList: trendingMoviesList == freezed
          ? _value._trendingMoviesList
          : trendingMoviesList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.stateId,
      required final List<dynamic> trendingShowsList,
      required final List<dynamic> popularMoviesList,
      required final List<dynamic> upcomingMoviesList,
      required final List<dynamic> nowPlayingShowsList,
      required final List<dynamic> trendingMoviesList,
      required this.isLoading,
      required this.isError})
      : _trendingShowsList = trendingShowsList,
        _popularMoviesList = popularMoviesList,
        _upcomingMoviesList = upcomingMoviesList,
        _nowPlayingShowsList = nowPlayingShowsList,
        _trendingMoviesList = trendingMoviesList;

  @override
  final String stateId;
  final List<dynamic> _trendingShowsList;
  @override
  List<dynamic> get trendingShowsList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingShowsList);
  }

// required List<NewHotResults> trendingMoviesList,
  final List<dynamic> _popularMoviesList;
// required List<NewHotResults> trendingMoviesList,
  @override
  List<dynamic> get popularMoviesList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_popularMoviesList);
  }

  final List<dynamic> _upcomingMoviesList;
  @override
  List<dynamic> get upcomingMoviesList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_upcomingMoviesList);
  }

  final List<dynamic> _nowPlayingShowsList;
  @override
  List<dynamic> get nowPlayingShowsList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nowPlayingShowsList);
  }

  final List<dynamic> _trendingMoviesList;
  @override
  List<dynamic> get trendingMoviesList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trendingMoviesList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'HomeState(stateId: $stateId, trendingShowsList: $trendingShowsList, popularMoviesList: $popularMoviesList, upcomingMoviesList: $upcomingMoviesList, nowPlayingShowsList: $nowPlayingShowsList, trendingMoviesList: $trendingMoviesList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.stateId, stateId) &&
            const DeepCollectionEquality()
                .equals(other._trendingShowsList, _trendingShowsList) &&
            const DeepCollectionEquality()
                .equals(other._popularMoviesList, _popularMoviesList) &&
            const DeepCollectionEquality()
                .equals(other._upcomingMoviesList, _upcomingMoviesList) &&
            const DeepCollectionEquality()
                .equals(other._nowPlayingShowsList, _nowPlayingShowsList) &&
            const DeepCollectionEquality()
                .equals(other._trendingMoviesList, _trendingMoviesList) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isError, isError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(stateId),
      const DeepCollectionEquality().hash(_trendingShowsList),
      const DeepCollectionEquality().hash(_popularMoviesList),
      const DeepCollectionEquality().hash(_upcomingMoviesList),
      const DeepCollectionEquality().hash(_nowPlayingShowsList),
      const DeepCollectionEquality().hash(_trendingMoviesList),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isError));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements HomeState {
  const factory _Initial(
      {required final String stateId,
      required final List<dynamic> trendingShowsList,
      required final List<dynamic> popularMoviesList,
      required final List<dynamic> upcomingMoviesList,
      required final List<dynamic> nowPlayingShowsList,
      required final List<dynamic> trendingMoviesList,
      required final bool isLoading,
      required final bool isError}) = _$_Initial;

  @override
  String get stateId;
  @override
  List<dynamic> get trendingShowsList;
  @override // required List<NewHotResults> trendingMoviesList,
  List<dynamic> get popularMoviesList;
  @override
  List<dynamic> get upcomingMoviesList;
  @override
  List<dynamic> get nowPlayingShowsList;
  @override
  List<dynamic> get trendingMoviesList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
