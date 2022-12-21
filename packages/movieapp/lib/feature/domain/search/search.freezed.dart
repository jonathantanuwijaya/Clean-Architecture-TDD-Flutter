// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$SearchMovieCopyWithImpl<$Res, SearchMovie>;
  @useResult
  $Res call({String artistName, String artworkUrl100, String longDescription});
}

/// @nodoc
class _$SearchMovieCopyWithImpl<$Res, $Val extends SearchMovie>
    implements $SearchMovieCopyWith<$Res> {
  _$SearchMovieCopyWithImpl(this._value, this._then);

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
abstract class _$$_SearchMovieCopyWith<$Res>
    implements $SearchMovieCopyWith<$Res> {
  factory _$$_SearchMovieCopyWith(
          _$_SearchMovie value, $Res Function(_$_SearchMovie) then) =
      __$$_SearchMovieCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String artistName, String artworkUrl100, String longDescription});
}

/// @nodoc
class __$$_SearchMovieCopyWithImpl<$Res>
    extends _$SearchMovieCopyWithImpl<$Res, _$_SearchMovie>
    implements _$$_SearchMovieCopyWith<$Res> {
  __$$_SearchMovieCopyWithImpl(
      _$_SearchMovie _value, $Res Function(_$_SearchMovie) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? artistName = null,
    Object? artworkUrl100 = null,
    Object? longDescription = null,
  }) {
    return _then(_$_SearchMovie(
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
            other is _$_SearchMovie &&
            (identical(other.artistName, artistName) ||
                other.artistName == artistName) &&
            (identical(other.artworkUrl100, artworkUrl100) ||
                other.artworkUrl100 == artworkUrl100) &&
            (identical(other.longDescription, longDescription) ||
                other.longDescription == longDescription));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, artistName, artworkUrl100, longDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchMovieCopyWith<_$_SearchMovie> get copyWith =>
      __$$_SearchMovieCopyWithImpl<_$_SearchMovie>(this, _$identity);
}

abstract class _SearchMovie implements SearchMovie {
  const factory _SearchMovie(
      {required final String artistName,
      required final String artworkUrl100,
      required final String longDescription}) = _$_SearchMovie;

  @override
  String get artistName;
  @override
  String get artworkUrl100;
  @override
  String get longDescription;
  @override
  @JsonKey(ignore: true)
  _$$_SearchMovieCopyWith<_$_SearchMovie> get copyWith =>
      throw _privateConstructorUsedError;
}
