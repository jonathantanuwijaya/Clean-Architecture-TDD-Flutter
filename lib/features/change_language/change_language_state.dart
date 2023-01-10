part of 'change_language_cubit.dart';

class ChangeLanguageState {
  final Locale locale;

  ChangeLanguageState({required this.locale});

  factory ChangeLanguageState.initial() =>
      ChangeLanguageState(locale: const Locale('en'));
}
