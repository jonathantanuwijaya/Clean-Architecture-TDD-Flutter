// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchMovieDto _$SearchMovieDtoFromJson(Map<String, dynamic> json) {
  return _SearchMovieDto.fromJson(json);
}

/// @nodoc
class _$SearchMovieDtoTearOff {
  const _$SearchMovieDtoTearOff();

  _SearchMovieDto call(
      {required String artistName,
      required String artworkUrl100,
      required String longDescription}) {
    return _SearchMovieDto(
      artistName: artistName,
      artworkUrl100: artworkUrl100,
      longDescription: longDescription,
    );
  }

  SearchMovieDto fromJson(Map<String, Object?> json) {
    return SearchMovieDto.fromJson(json);
  }
}

/// @nodoc
const $SearchMovieDto = _$SearchMovieDtoTearOff();

/// @nodoc
mixin _$SearchMovieDto {
  String get artistName => throw _privateConstructorUsedError;
  String get artworkUrl100 => throw _privateConstructorUsedError;
  String get longDescription => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchMovieDtoCopyWith<SearchMovieDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchMovieDtoCopyWith<$Res> {
  factory $SearchMovieDtoCopyWith(
          SearchMovieDto value, $Res Function(SearchMovieDto) then) =
      _$SearchMovieDtoCopyWithImpl<$Res>;
  $Res call({String artistName, String artworkUrl100, String longDescription});
}

/// @nodoc
class _$SearchMovieDtoCopyWithImpl<$Res>
    implements $SearchMovieDtoCopyWith<$Res> {
  _$SearchMovieDtoCopyWithImpl(this._value, this._then);

  final SearchMovieDto _value;
  // ignore: unused_field
  final $Res Function(SearchMovieDto) _then;

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
abstract class _$SearchMovieDtoCopyWith<$Res>
    implements $SearchMovieDtoCopyWith<$Res> {
  factory _$SearchMovieDtoCopyWith(
          _SearchMovieDto value, $Res Function(_SearchMovieDto) then) =
      __$SearchMovieDtoCopyWithImpl<$Res>;
  @override
  $Res call({String artistName, String artworkUrl100, String longDescription});
}

/// @nodoc
class __$SearchMovieDtoCopyWithImpl<$Res>
    extends _$SearchMovieDtoCopyWithImpl<$Res>
    implements _$SearchMovieDtoCopyWith<$Res> {
  __$SearchMovieDtoCopyWithImpl(
      _SearchMovieDto _value, $Res Function(_SearchMovieDto) _then)
      : super(_value, (v) => _then(v as _SearchMovieDto));

  @override
  _SearchMovieDto get _value => super._value as _SearchMovieDto;

  @override
  $Res call({
    Object? artistName = freezed,
    Object? artworkUrl100 = freezed,
    Object? longDescription = freezed,
  }) {
    return _then(_SearchMovieDto(
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
@JsonSerializable()
class _$_SearchMovieDto extends _SearchMovieDto {
  const _$_SearchMovieDto(
      {required this.artistName,
      required this.artworkUrl100,
      required this.longDescription})
      : super._();

  factory _$_SearchMovieDto.fromJson(Map<String, dynamic> json) =>
      _$$_SearchMovieDtoFromJson(json);

  @override
  final String artistName;
  @override
  final String artworkUrl100;
  @override
  final String longDescription;

  @override
  String toString() {
    return 'SearchMovieDto(artistName: $artistName, artworkUrl100: $artworkUrl100, longDescription: $longDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchMovieDto &&
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
  _$SearchMovieDtoCopyWith<_SearchMovieDto> get copyWith =>
      __$SearchMovieDtoCopyWithImpl<_SearchMovieDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchMovieDtoToJson(this);
  }
}

abstract class _SearchMovieDto extends SearchMovieDto {
  const factory _SearchMovieDto(
      {required String artistName,
      required String artworkUrl100,
      required String longDescription}) = _$_SearchMovieDto;
  const _SearchMovieDto._() : super._();

  factory _SearchMovieDto.fromJson(Map<String, dynamic> json) =
      _$_SearchMovieDto.fromJson;

  @override
  String get artistName;
  @override
  String get artworkUrl100;
  @override
  String get longDescription;
  @override
  @JsonKey(ignore: true)
  _$SearchMovieDtoCopyWith<_SearchMovieDto> get copyWith =>
      throw _privateConstructorUsedError;
}
