// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieTearOff {
  const _$MovieTearOff();

  _Movie call(
      {required int collectionId,
      required String artistName,
      required String trackName,
      required String artworkUrl100,
      required String shortDescription,
      required String longDescription}) {
    return _Movie(
      collectionId: collectionId,
      artistName: artistName,
      trackName: trackName,
      artworkUrl100: artworkUrl100,
      shortDescription: shortDescription,
      longDescription: longDescription,
    );
  }
}

/// @nodoc
const $Movie = _$MovieTearOff();

/// @nodoc
mixin _$Movie {
  int get collectionId => throw _privateConstructorUsedError;
  String get artistName => throw _privateConstructorUsedError;
  String get trackName => throw _privateConstructorUsedError;
  String get artworkUrl100 => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  String get longDescription => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res>;
  $Res call(
      {int collectionId,
      String artistName,
      String trackName,
      String artworkUrl100,
      String shortDescription,
      String longDescription});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res> implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  final Movie _value;
  // ignore: unused_field
  final $Res Function(Movie) _then;

  @override
  $Res call({
    Object? collectionId = freezed,
    Object? artistName = freezed,
    Object? trackName = freezed,
    Object? artworkUrl100 = freezed,
    Object? shortDescription = freezed,
    Object? longDescription = freezed,
  }) {
    return _then(_value.copyWith(
      collectionId: collectionId == freezed
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as int,
      artistName: artistName == freezed
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      trackName: trackName == freezed
          ? _value.trackName
          : trackName // ignore: cast_nullable_to_non_nullable
              as String,
      artworkUrl100: artworkUrl100 == freezed
          ? _value.artworkUrl100
          : artworkUrl100 // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      longDescription: longDescription == freezed
          ? _value.longDescription
          : longDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) then) =
      __$MovieCopyWithImpl<$Res>;
  @override
  $Res call(
      {int collectionId,
      String artistName,
      String trackName,
      String artworkUrl100,
      String shortDescription,
      String longDescription});
}

/// @nodoc
class __$MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res>
    implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(_Movie _value, $Res Function(_Movie) _then)
      : super(_value, (v) => _then(v as _Movie));

  @override
  _Movie get _value => super._value as _Movie;

  @override
  $Res call({
    Object? collectionId = freezed,
    Object? artistName = freezed,
    Object? trackName = freezed,
    Object? artworkUrl100 = freezed,
    Object? shortDescription = freezed,
    Object? longDescription = freezed,
  }) {
    return _then(_Movie(
      collectionId: collectionId == freezed
          ? _value.collectionId
          : collectionId // ignore: cast_nullable_to_non_nullable
              as int,
      artistName: artistName == freezed
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      trackName: trackName == freezed
          ? _value.trackName
          : trackName // ignore: cast_nullable_to_non_nullable
              as String,
      artworkUrl100: artworkUrl100 == freezed
          ? _value.artworkUrl100
          : artworkUrl100 // ignore: cast_nullable_to_non_nullable
              as String,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String,
      longDescription: longDescription == freezed
          ? _value.longDescription
          : longDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Movie implements _Movie {
  const _$_Movie(
      {required this.collectionId,
      required this.artistName,
      required this.trackName,
      required this.artworkUrl100,
      required this.shortDescription,
      required this.longDescription});

  @override
  final int collectionId;
  @override
  final String artistName;
  @override
  final String trackName;
  @override
  final String artworkUrl100;
  @override
  final String shortDescription;
  @override
  final String longDescription;

  @override
  String toString() {
    return 'Movie(collectionId: $collectionId, artistName: $artistName, trackName: $trackName, artworkUrl100: $artworkUrl100, shortDescription: $shortDescription, longDescription: $longDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Movie &&
            const DeepCollectionEquality()
                .equals(other.collectionId, collectionId) &&
            const DeepCollectionEquality()
                .equals(other.artistName, artistName) &&
            const DeepCollectionEquality().equals(other.trackName, trackName) &&
            const DeepCollectionEquality()
                .equals(other.artworkUrl100, artworkUrl100) &&
            const DeepCollectionEquality()
                .equals(other.shortDescription, shortDescription) &&
            const DeepCollectionEquality()
                .equals(other.longDescription, longDescription));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(collectionId),
      const DeepCollectionEquality().hash(artistName),
      const DeepCollectionEquality().hash(trackName),
      const DeepCollectionEquality().hash(artworkUrl100),
      const DeepCollectionEquality().hash(shortDescription),
      const DeepCollectionEquality().hash(longDescription));

  @JsonKey(ignore: true)
  @override
  _$MovieCopyWith<_Movie> get copyWith =>
      __$MovieCopyWithImpl<_Movie>(this, _$identity);
}

abstract class _Movie implements Movie {
  const factory _Movie(
      {required int collectionId,
      required String artistName,
      required String trackName,
      required String artworkUrl100,
      required String shortDescription,
      required String longDescription}) = _$_Movie;

  @override
  int get collectionId;
  @override
  String get artistName;
  @override
  String get trackName;
  @override
  String get artworkUrl100;
  @override
  String get shortDescription;
  @override
  String get longDescription;
  @override
  @JsonKey(ignore: true)
  _$MovieCopyWith<_Movie> get copyWith => throw _privateConstructorUsedError;
}
