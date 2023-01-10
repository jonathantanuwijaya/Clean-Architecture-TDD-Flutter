import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'change_language_state.dart';

class ChangeLanguageCubit extends Cubit<ChangeLanguageState> {
  ChangeLanguageCubit() : super(ChangeLanguageState.initial());

  void changeLanguage(String locale) {
    debugPrint('locale triggered $locale');
    emit(ChangeLanguageState(locale: Locale(locale)));
  }

  void getDefaultLanguage() {
    emit(ChangeLanguageState(locale: const Locale("en")));
  }
}
