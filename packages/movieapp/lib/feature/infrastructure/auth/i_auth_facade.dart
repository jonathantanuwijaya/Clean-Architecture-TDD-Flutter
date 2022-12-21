import 'package:flutter/cupertino.dart';
import 'package:movieapp/feature/domain/auth/value_objects.dart';

@immutable
abstract class IAuthFacade {
  Future<void> signIn({
    required EmailAddress emailAddress,
    required Password password
  });
  }