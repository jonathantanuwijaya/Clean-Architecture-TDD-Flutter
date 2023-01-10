import 'package:clean_arch_tdd/features/change_language/change_language_cubit.dart';
import 'package:clean_arch_tdd/features/number_trivia/presentation/pages/number_trivia_page.dart';
import 'package:clean_arch_tdd/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangeLanguageCubit(),
      child: BlocBuilder<ChangeLanguageCubit, ChangeLanguageState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Number Trivia Generator',
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            locale: state.locale,
            theme: ThemeData(primaryColor: Colors.cyan.shade800),
            home: const NumberTriviaPage(),
          );
        },
      ),
    );
  }
}
