part of 'app_test.dart';

const errorMessage = 'trivia-error';
const tNumberTrivia = NumberTrivia(number: tTriviaNumber, text: tTriviaText);
const tTriviaText = 'test-trivia';
const tTriviaNumber = 1;
const tTriviaNumberString = '1';
const kRandomTrivia = Key('get-random-trivia');
const kConcreteTrivia = Key('search-trivia');
const kLoadingWidget = Key('loading-widget');
const kProgressIndicator = Key('progress-indicator');

Widget createWidgetUnderTest(NumberTriviaBloc bloc) => MaterialApp(
  title: 'Number',
  home: BlocProvider(
    create: (_) => bloc,
    child: const NumberTriviaBodyPage(),
  ),
);
