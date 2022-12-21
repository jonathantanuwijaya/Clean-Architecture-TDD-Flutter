// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  InvalidEmailAndPass invalidEmailAndPass() {
    return const InvalidEmailAndPass();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmailAndPass,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? invalidEmailAndPass,
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
    TResult Function(InvalidEmailAndPass value)? invalidEmailAndPass,
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
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $InvalidEmailAndPassCopyWith<$Res> {
  factory $InvalidEmailAndPassCopyWith(
          InvalidEmailAndPass value, $Res Function(InvalidEmailAndPass) then) =
      _$InvalidEmailAndPassCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailAndPassCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidEmailAndPassCopyWith<$Res> {
  _$InvalidEmailAndPassCopyWithImpl(
      InvalidEmailAndPass _value, $Res Function(InvalidEmailAndPass) _then)
      : super(_value, (v) => _then(v as InvalidEmailAndPass));

  @override
  InvalidEmailAndPass get _value => super._value as InvalidEmailAndPass;
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
        (other.runtimeType == runtimeType && other is InvalidEmailAndPass);
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
    TResult Function()? invalidEmailAndPass,
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
    TResult Function(InvalidEmailAndPass value)? invalidEmailAndPass,
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
