// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchMovieDto _$SearchMovieDtoFromJson(Map<String, dynamic> json) {
  return _SearchMovieDto.fromJson(json);
}

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
      _$SearchMovieDtoCopyWithImpl<$Res, SearchMovieDto>;
  @useResult
  $Res call({String artistName, String artworkUrl100, String longDescription});
}

/// @nodoc
class _$SearchMovieDtoCopyWithImpl<$Res, $Val extends SearchMovieDto>
    implements $SearchMovieDtoCopyWith<$Res> {
  _$SearchMovieDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistName = null,
    Object? artworkUrl100 = null,
    Object? longDescription = null,
  }) {
    return _then(_value.copyWith(
      artistName: null == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      artworkUrl100: null == artworkUrl100
          ? _value.artworkUrl100
          : artworkUrl100 // ignore: cast_nullable_to_non_nullable
              as String,
      longDescription: null == longDescription
          ? _value.longDescription
          : longDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchMovieDtoCopyWith<$Res>
    implements $SearchMovieDtoCopyWith<$Res> {
  factory _$$_SearchMovieDtoCopyWith(
          _$_SearchMovieDto value, $Res Function(_$_SearchMovieDto) then) =
      __$$_SearchMovieDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String artistName, String artworkUrl100, String longDescription});
}

/// @nodoc
class __$$_SearchMovieDtoCopyWithImpl<$Res>
    extends _$SearchMovieDtoCopyWithImpl<$Res, _$_SearchMovieDto>
    implements _$$_SearchMovieDtoCopyWith<$Res> {
  __$$_SearchMovieDtoCopyWithImpl(
      _$_SearchMovieDto _value, $Res Function(_$_SearchMovieDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistName = null,
    Object? artworkUrl100 = null,
    Object? longDescription = null,
  }) {
    return _then(_$_SearchMovieDto(
      artistName: null == artistName
          ? _value.artistName
          : artistName // ignore: cast_nullable_to_non_nullable
              as String,
      artworkUrl100: null == artworkUrl100
          ? _value.artworkUrl100
          : artworkUrl100 // ignore: cast_nullable_to_non_nullable
              as String,
      longDescription: null == longDescription
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
            other is _$_SearchMovieDto &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName) &&
            (identical(other.artworkUrl100, artworkUrl100) ||
                other.artworkUrl100 == artworkUrl100) &&
            (identical(other.longDescription, longDescription) ||
                other.longDescription == longDescription));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, artistName, artworkUrl100, longDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchMovieDtoCopyWith<_$_SearchMovieDto> get copyWith =>
      __$$_SearchMovieDtoCopyWithImpl<_$_SearchMovieDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SearchMovieDtoToJson(
      this,
    );
  }
}

abstract class _SearchMovieDto extends SearchMovieDto {
  const factory _SearchMovieDto(
      {required final String artistName,
      required final String artworkUrl100,
      required final String longDescription}) = _$_SearchMovieDto;
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
  _$$_SearchMovieDtoCopyWith<_$_SearchMovieDto> get copyWith =>
      throw _privateConstructorUsedError;
}
