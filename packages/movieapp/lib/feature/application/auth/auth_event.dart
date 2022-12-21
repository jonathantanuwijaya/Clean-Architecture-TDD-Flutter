part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.emailChanged(String emailStr) = EmailChanged;
  const factory AuthEvent.passwordChanged(String passwordStr) = PasswordChanged;
  const factory AuthEvent.signIn() = SignIn;

  // this should be in separate bloc
  const factory AuthEvent.checkAuthStatus() = CheckAuthStatus;
}
