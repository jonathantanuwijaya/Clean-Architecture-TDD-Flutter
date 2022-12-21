import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movieapp/feature/domain/auth/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User(
      {required EmailAddress emailAddress, required Password password}) = _User;
}
