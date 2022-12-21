// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieDto _$MovieDtoFromJson(Map<String, dynamic> json) {
  return _MovieDto.fromJson(json);
}

/// @nodoc
class _$MovieDtoTearOff {
  const _$MovieDtoTearOff();

  _MovieDto call(
      {int collectionId = 0,
      required String artistName,
      required String trackName,
      required String artworkUrl100,
      String shortDescription = '-',
      required String longDescription}) {
    return _MovieDto(
      collectionId: collectionId,
      artistName: artistName,
      trackName: trackName,
      artworkUrl100: artworkUrl100,
      shortDescription: shortDescription,
      longDescription: longDescription,
    );
  }

  MovieDto fromJson(Map<String, Object?> json) {
    return MovieDto.fromJson(json);
  }
}

/// @nodoc
const $MovieDto = _$MovieDtoTearOff();

/// @nodoc
mixin _$MovieDto {
  int get collectionId => throw _privateConstructorUsedError;
  String get artistName => throw _privateConstructorUsedError;
  String get trackName => throw _privateConstructorUsedError;
  String get artworkUrl100 => throw _privateConstructorUsedError;
  String get shortDescription => throw _privateConstructorUsedError;
  String get longDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDtoCopyWith<MovieDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDtoCopyWith<$Res> {
  factory $MovieDtoCopyWith(MovieDto value, $Res Function(MovieDto) then) =
      _$MovieDtoCopyWithImpl<$Res>;
  $Res call(
      {int collectionId,
      String artistName,
      String trackName,
      String artworkUrl100,
      String shortDescription,
      String longDescription});
}

/// @nodoc
class _$MovieDtoCopyWithImpl<$Res> implements $MovieDtoCopyWith<$Res> {
  _$MovieDtoCopyWithImpl(this._value, this._then);

  final MovieDto _value;
  // ignore: unused_field
  final $Res Function(MovieDto) _then;

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
abstract class _$MovieDtoCopyWith<$Res> implements $MovieDtoCopyWith<$Res> {
  factory _$MovieDtoCopyWith(_MovieDto value, $Res Function(_MovieDto) then) =
      __$MovieDtoCopyWithImpl<$Res>;
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
class __$MovieDtoCopyWithImpl<$Res> extends _$MovieDtoCopyWithImpl<$Res>
    implements _$MovieDtoCopyWith<$Res> {
  __$MovieDtoCopyWithImpl(_MovieDto _value, $Res Function(_MovieDto) _then)
      : super(_value, (v) => _then(v as _MovieDto));

  @override
  _MovieDto get _value => super._value as _MovieDto;

  @override
  $Res call({
    Object? collectionId = freezed,
    Object? artistName = freezed,
    Object? trackName = freezed,
    Object? artworkUrl100 = freezed,
    Object? shortDescription = freezed,
    Object? longDescription = freezed,
  }) {
    return _then(_MovieDto(
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
@JsonSerializable()
class _$_MovieDto extends _MovieDto {
  const _$_MovieDto(
      {this.collectionId = 0,
      required this.artistName,
      required this.trackName,
      required this.artworkUrl100,
      this.shortDescription = '-',
      required this.longDescription})
      : super._();

  factory _$_MovieDto.fromJson(Map<String, dynamic> json) =>
      _$$_MovieDtoFromJson(json);

  @JsonKey()
  @override
  final int collectionId;
  @override
  final String artistName;
  @override
  final String trackName;
  @override
  final String artworkUrl100;
  @JsonKey()
  @override
  final String shortDescription;
  @override
  final String longDescription;

  @override
  String toString() {
    return 'MovieDto(collectionId: $collectionId, artistName: $artistName, trackName: $trackName, artworkUrl100: $artworkUrl100, shortDescription: $shortDescription, longDescription: $longDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MovieDto &&
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
  _$MovieDtoCopyWith<_MovieDto> get copyWith =>
      __$MovieDtoCopyWithImpl<_MovieDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieDtoToJson(this);
  }
}

abstract class _MovieDto extends MovieDto {
  const factory _MovieDto(
      {int collectionId,
      required String artistName,
      required String trackName,
      required String artworkUrl100,
      String shortDescription,
      required String longDescription}) = _$_MovieDto;
  const _MovieDto._() : super._();

  factory _MovieDto.fromJson(Map<String, dynamic> json) = _$_MovieDto.fromJson;

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
  _$MovieDtoCopyWith<_MovieDto> get copyWith =>
      throw _privateConstructorUsedError;
}
