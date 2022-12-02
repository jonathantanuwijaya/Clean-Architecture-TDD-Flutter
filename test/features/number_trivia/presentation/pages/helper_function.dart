part of 'number_trivia_page_test.dart';

Widget createWidgetUnderTest(NumberTriviaBloc bloc) => MaterialApp(
      title: 'Number',
      home: BlocProvider(
        create: (_) => bloc,
        child: const NumberTriviaBodyPage(),
      ),
    );

Widget createWidgetUnderTestWithLoadingState(NumberTriviaBloc bloc) {
  when(() => bloc.state).thenReturn(Loading());
  return createWidgetUnderTest(bloc);
}

Widget createWidgetUnderTestWithErrorState(NumberTriviaBloc bloc) {
  when(() => bloc.state).thenReturn(const Error(message: errorMessage));
  return createWidgetUnderTest(bloc);
}

Widget createWidgetUnderTestWithLoadedState(NumberTriviaBloc bloc) {
  when(() => bloc.state).thenReturn(const Loaded(trivia: tNumberTrivia));
  return createWidgetUnderTest(bloc);
}
