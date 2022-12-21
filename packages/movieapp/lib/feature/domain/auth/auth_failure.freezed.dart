// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmailAndPass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidEmailAndPass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmailAndPass,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmailAndPass value) invalidEmailAndPass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmailAndPass value)? invalidEmailAndPass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmailAndPass value)? invalidEmailAndPass,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res, AuthFailure>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res, $Val extends AuthFailure>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InvalidEmailAndPassCopyWith<$Res> {
  factory _$$InvalidEmailAndPassCopyWith(_$InvalidEmailAndPass value,
          $Res Function(_$InvalidEmailAndPass) then) =
      __$$InvalidEmailAndPassCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidEmailAndPassCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$InvalidEmailAndPass>
    implements _$$InvalidEmailAndPassCopyWith<$Res> {
  __$$InvalidEmailAndPassCopyWithImpl(
      _$InvalidEmailAndPass _value, $Res Function(_$InvalidEmailAndPass) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidEmailAndPass implements InvalidEmailAndPass {
  const _$InvalidEmailAndPass();

  @override
  String toString() {
    return 'AuthFailure.invalidEmailAndPass()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidEmailAndPass);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmailAndPass,
  }) {
    return invalidEmailAndPass();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidEmailAndPass,
  }) {
    return invalidEmailAndPass?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmailAndPass,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPass != null) {
      return invalidEmailAndPass();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmailAndPass value) invalidEmailAndPass,
  }) {
    return invalidEmailAndPass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmailAndPass value)? invalidEmailAndPass,
  }) {
    return invalidEmailAndPass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmailAndPass value)? invalidEmailAndPass,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPass != null) {
      return invalidEmailAndPass(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAndPass implements AuthFailure {
  const factory InvalidEmailAndPass() = _$InvalidEmailAndPass;
}
