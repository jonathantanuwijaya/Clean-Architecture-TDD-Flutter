// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchEventTearOff {
  const _$SearchEventTearOff();

  _Started started() {
    return const _Started();
  }

  _SearchMovie searchMovie(String movieName) {
    return _SearchMovie(
      movieName,
    );
  }
}

/// @nodoc
const $SearchEvent = _$SearchEventTearOff();

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String movieName) searchMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String movieName)? searchMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String movieName)? searchMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchMovie value) searchMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchMovie value)? searchMovie,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchMovie value)? searchMovie,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'SearchEvent.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String movieName) searchMovie,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String movieName)? searchMovie,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String movieName)? searchMovie,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchMovie value) searchMovie,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchMovie value)? searchMovie,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchMovie value)? searchMovie,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SearchEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$SearchMovieCopyWith<$Res> {
  factory _$SearchMovieCopyWith(
          _SearchMovie value, $Res Function(_SearchMovie) then) =
      __$SearchMovieCopyWithImpl<$Res>;
  $Res call({String movieName});
}

/// @nodoc
class __$SearchMovieCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements _$SearchMovieCopyWith<$Res> {
  __$SearchMovieCopyWithImpl(
      _SearchMovie _value, $Res Function(_SearchMovie) _then)
      : super(_value, (v) => _then(v as _SearchMovie));

  @override
  _SearchMovie get _value => super._value as _SearchMovie;

  @override
  $Res call({
    Object? movieName = freezed,
  }) {
    return _then(_SearchMovie(
      movieName == freezed
          ? _value.movieName
          : movieName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchMovie with DiagnosticableTreeMixin implements _SearchMovie {
  const _$_SearchMovie(this.movieName);

  @override
  final String movieName;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchEvent.searchMovie(movieName: $movieName)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchEvent.searchMovie'))
      ..add(DiagnosticsProperty('movieName', movieName));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchMovie &&
            const DeepCollectionEquality().equals(other.movieName, movieName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(movieName));

  @JsonKey(ignore: true)
  @override
  _$SearchMovieCopyWith<_SearchMovie> get copyWith =>
      __$SearchMovieCopyWithImpl<_SearchMovie>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String movieName) searchMovie,
  }) {
    return searchMovie(movieName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String movieName)? searchMovie,
  }) {
    return searchMovie?.call(movieName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String movieName)? searchMovie,
    required TResult orElse(),
  }) {
    if (searchMovie != null) {
      return searchMovie(movieName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchMovie value) searchMovie,
  }) {
    return searchMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchMovie value)? searchMovie,
  }) {
    return searchMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchMovie value)? searchMovie,
    required TResult orElse(),
  }) {
    if (searchMovie != null) {
      return searchMovie(this);
    }
    return orElse();
  }
}

abstract class _SearchMovie implements SearchEvent {
  const factory _SearchMovie(String movieName) = _$_SearchMovie;

  String get movieName;
  @JsonKey(ignore: true)
  _$SearchMovieCopyWith<_SearchMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  _SearchState call(
      {required bool isLoading,
      required List<SearchMovie> listOfMovies,
      required Option<Either<SearchMovieFailure, SearchMovie>>
          failureOrDataOption}) {
    return _SearchState(
      isLoading: isLoading,
      listOfMovies: listOfMovies,
      failureOrDataOption: failureOrDataOption,
    );
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<SearchMovie> get listOfMovies => throw _privateConstructorUsedError;
  Option<Either<SearchMovieFailure, SearchMovie>> get failureOrDataOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<SearchMovie> listOfMovies,
      Option<Either<SearchMovieFailure, SearchMovie>> failureOrDataOption});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? listOfMovies = freezed,
    Object? failureOrDataOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listOfMovies: listOfMovies == freezed
          ? _value.listOfMovies
          : listOfMovies // ignore: cast_nullable_to_non_nullable
              as List<SearchMovie>,
      failureOrDataOption: failureOrDataOption == freezed
          ? _value.failureOrDataOption
          : failureOrDataOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SearchMovieFailure, SearchMovie>>,
    ));
  }
}

/// @nodoc
abstract class _$SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(
          _SearchState value, $Res Function(_SearchState) then) =
      __$SearchStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<SearchMovie> listOfMovies,
      Option<Either<SearchMovieFailure, SearchMovie>> failureOrDataOption});
}

/// @nodoc
class __$SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(
      _SearchState _value, $Res Function(_SearchState) _then)
      : super(_value, (v) => _then(v as _SearchState));

  @override
  _SearchState get _value => super._value as _SearchState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? listOfMovies = freezed,
    Object? failureOrDataOption = freezed,
  }) {
    return _then(_SearchState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listOfMovies: listOfMovies == freezed
          ? _value.listOfMovies
          : listOfMovies // ignore: cast_nullable_to_non_nullable
              as List<SearchMovie>,
      failureOrDataOption: failureOrDataOption == freezed
          ? _value.failureOrDataOption
          : failureOrDataOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<SearchMovieFailure, SearchMovie>>,
    ));
  }
}

/// @nodoc

class _$_SearchState extends _SearchState with DiagnosticableTreeMixin {
  const _$_SearchState(
      {required this.isLoading,
      required this.listOfMovies,
      required this.failureOrDataOption})
      : super._();

  @override
  final bool isLoading;
  @override
  final List<SearchMovie> listOfMovies;
  @override
  final Option<Either<SearchMovieFailure, SearchMovie>> failureOrDataOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchState(isLoading: $isLoading, listOfMovies: $listOfMovies, failureOrDataOption: $failureOrDataOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('listOfMovies', listOfMovies))
      ..add(DiagnosticsProperty('failureOrDataOption', failureOrDataOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.listOfMovies, listOfMovies) &&
            const DeepCollectionEquality()
                .equals(other.failureOrDataOption, failureOrDataOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(listOfMovies),
      const DeepCollectionEquality().hash(failureOrDataOption));

  @JsonKey(ignore: true)
  @override
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);
}

abstract class _SearchState extends SearchState {
  const factory _SearchState(
      {required bool isLoading,
      required List<SearchMovie> listOfMovies,
      required Option<Either<SearchMovieFailure, SearchMovie>>
          failureOrDataOption}) = _$_SearchState;
  const _SearchState._() : super._();

  @override
  bool get isLoading;
  @override
  List<SearchMovie> get listOfMovies;
  @override
  Option<Either<SearchMovieFailure, SearchMovie>> get failureOrDataOption;
  @override
  @JsonKey(ignore: true)
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
