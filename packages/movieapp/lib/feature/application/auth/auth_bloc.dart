import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movieapp/feature/domain/auth/auth_failure.dart';
import 'package:movieapp/feature/domain/auth/user.dart';
import 'package:movieapp/feature/domain/auth/value_objects.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  // final IAuthFacade _authFacade;
  AuthBloc() : super(AuthState.iniitial()) {
    on<AuthEvent>(_onEvent);
  }

  FutureOr<void> _onEvent(AuthEvent event, Emitter<AuthState> emit) async {
    await event.map(emailChanged: (event) async {
      emit(state.copyWith(
          emailAddress: EmailAddress(event.emailStr),
          authFailureOrSucessOption: none()));
    }, passwordChanged: (event) async {
      emit(state.copyWith(
          password: Password(event.passwordStr),
          authFailureOrSucessOption: none()));
    }, signIn: (event) async {
      await _performSignIn(emit);
    }, checkAuthStatus: (event) async {
      var authStatus = state.authenticated;
      emit(state.copyWith(authenticated: authStatus));
    });
  }

  FutureOr<void> _performSignIn(Emitter<AuthState> emit) {
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    Either<AuthFailure, Unit>? failureOrSuccess;

    List users = [];
    users.add(User(
        emailAddress: EmailAddress('jack@mail.com'),
        password: Password('jack123')));
    users.add(User(
        emailAddress: EmailAddress('budi@mail.com'),
        password: Password('b123')));

    if (isEmailValid && isPasswordValid) {
      emit(state.copyWith(
          authFailureOrSucessOption: none(),
          isSubmitting: true,
          showErrorMessages: AutovalidateMode.always));
      var mappedEmails = users.map((n) => n.emailAddress.getOrCrash());
      var mappedPassword = users.map((n) => n.password.getOrCrash());
      if (mappedEmails.contains(state.emailAddress.getOrCrash()) &&
          mappedPassword.contains(state.password.getOrCrash())) {
        emit(state.copyWith(
            authenticated: true, authFailureOrSucessOption: some(right(unit))));

        debugPrint('User Authenticated');
      } else {
        debugPrint('credentials false');
        emit(state.copyWith(
            authFailureOrSucessOption:
                some(left(const AuthFailure.invalidEmailAndPass())),
            authenticated: false,
            isSubmitting: false));
      }
    }

    emit(state.copyWith(
        isSubmitting: false,
        showErrorMessages: AutovalidateMode.always,
        authFailureOrSucessOption: optionOf(failureOrSuccess)));
  }
}
