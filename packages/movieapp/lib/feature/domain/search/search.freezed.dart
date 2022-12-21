// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchMovieTearOff {
  const _$SearchMovieTearOff();

  _SearchMovie call(
      {required String artistName,
      required String artworkUrl100,
      required String longDescription}) {
    return _SearchMovie(
      artistName: artistName,
      artworkUrl100: artworkUrl100,
      longDescription: longDescription,
    );
  }
}

/// @nodoc
const $SearchMovie = _$SearchMovieTearOff();

/// @nodoc
mixin _$SearchMovie {
  String get artistName => throw _privateConstructorUsedError;
  String get artworkUrl100 => throw _privateConstructorUsedError;
  String get longDescription => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchMovieCopyWith<SearchMovie> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchMovieCopyWith<$Res> {
  factory $SearchMovieCopyWith(
          SearchMovie value, $Res Function(SearchMovie) then) =
      _$SearchMovieCopyWithImpl<$Res>;
  $Res call({String artistName, String artworkUrl100, String longDescription});
}

/// @nodoc
class _$SearchMovieCopyWithImpl<$Res> implements $SearchMovieCopyWith<$Res> {
  _$SearchMovieCopyWithImpl(this._value, this._then);

  final SearchMovie _value;
  // ignore: unused_field
  final $Res Function(SearchMovie) _then;

  @override
  $Res call({
    Object? artistName = freezed,
    Object? artworkUrl100 = freezed,
    Object? longDescription = freezed,
  }) {
    return _then(_value.copyWith(
      artistName: artistName == freezed
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      artworkUrl100: artworkUrl100 == freezed
          ? _value.artworkUrl100
          : artworkUrl100 // ignore: cast_nullable_to_non_nullable
              as String,
      longDescription: longDescription == freezed
          ? _value.longDescription
          : longDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SearchMovieCopyWith<$Res>
    implements $SearchMovieCopyWith<$Res> {
  factory _$SearchMovieCopyWith(
          _SearchMovie value, $Res Function(_SearchMovie) then) =
      __$SearchMovieCopyWithImpl<$Res>;
  @override
  $Res call({String artistName, String artworkUrl100, String longDescription});
}

/// @nodoc
class __$SearchMovieCopyWithImpl<$Res> extends _$SearchMovieCopyWithImpl<$Res>
    implements _$SearchMovieCopyWith<$Res> {
  __$SearchMovieCopyWithImpl(
      _SearchMovie _value, $Res Function(_SearchMovie) _then)
      : super(_value, (v) => _then(v as _SearchMovie));

  @override
  _SearchMovie get _value => super._value as _SearchMovie;

  @override
  $Res call({
    Object? artistName = freezed,
    Object? artworkUrl100 = freezed,
    Object? longDescription = freezed,
  }) {
    return _then(_SearchMovie(
      artistName: artistName == freezed
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      artworkUrl100: artworkUrl100 == freezed
          ? _value.artworkUrl100
          : artworkUrl100 // ignore: cast_nullable_to_non_nullable
              as String,
      longDescription: longDescription == freezed
          ? _value.longDescription
          : longDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchMovie implements _SearchMovie {
  const _$_SearchMovie(
      {required this.artistName,
      required this.artworkUrl100,
      required this.longDescription});

  @override
  final String artistName;
  @override
  final String artworkUrl100;
  @override
  final String longDescription;

  @override
  String toString() {
    return 'SearchMovie(artistName: $artistName, artworkUrl100: $artworkUrl100, longDescription: $longDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchMovie &&
            const DeepCollectionEquality()
                .equals(other.artistName, artistName) &&
            const DeepCollectionEquality()
                .equals(other.artworkUrl100, artworkUrl100) &&
            const DeepCollectionEquality()
                .equals(other.longDescription, longDescription));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(artistName),
      const DeepCollectionEquality().hash(artworkUrl100),
      const DeepCollectionEquality().hash(longDescription));

  @JsonKey(ignore: true)
  @override
  _$SearchMovieCopyWith<_SearchMovie> get copyWith =>
      __$SearchMovieCopyWithImpl<_SearchMovie>(this, _$identity);
}

abstract class _SearchMovie implements SearchMovie {
  const factory _SearchMovie(
      {required String artistName,
      required String artworkUrl100,
      required String longDescription}) = _$_SearchMovie;

  @override
  String get artistName;
  @override
  String get artworkUrl100;
  @override
  String get longDescription;
  @override
  @JsonKey(ignore: true)
  _$SearchMovieCopyWith<_SearchMovie> get copyWith =>
      throw _privateConstructorUsedError;
}
