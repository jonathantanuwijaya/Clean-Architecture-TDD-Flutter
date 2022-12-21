import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movieapp/feature/domain/auth/value_objects.dart';
import 'auth_failure.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

}
