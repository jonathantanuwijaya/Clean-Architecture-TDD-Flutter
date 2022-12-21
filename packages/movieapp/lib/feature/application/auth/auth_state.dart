part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required EmailAddress emailAddress,
    required Password password,
    required bool isSubmitting,
    required bool authenticated,
    required AutovalidateMode showErrorMessages,
    required Option<Either<AuthFailure, Unit>> authFailureOrSucessOption,
  }) = _AuthState;

  factory AuthState.iniitial() => AuthState(
      emailAddress: EmailAddress(''),
      password: Password(''),
      isSubmitting: false,
      authenticated: false,
      showErrorMessages:  AutovalidateMode.disabled,
      authFailureOrSucessOption: none());


      
}
