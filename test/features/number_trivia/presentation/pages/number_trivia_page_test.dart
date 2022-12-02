import 'package:clean_arch_tdd/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_arch_tdd/features/number_trivia/presentation/bloc/number_trivia_bloc.dart';
import 'package:clean_arch_tdd/features/number_trivia/presentation/pages/number_trivia_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:bloc_test/bloc_test.dart';

part 'helper_function.dart';

part 'const_helper.dart';

class MockNumberTriviaBloc
    extends MockBloc<NumberTriviaEvent, NumberTriviaState>
    implements NumberTriviaBloc {}

void main() {
  late NumberTriviaBloc bloc;

  setUp(() {
    bloc = MockNumberTriviaBloc();
  });

  group('Widget', () {
    testWidgets('Title is displayed', (tester) async {
      when(() => bloc.state).thenReturn(Empty());
      await tester.pumpWidget(createWidgetUnderTest(bloc));
      expect(find.text('Number Trivia Generator'), findsOneWidget);
    });

    testWidgets('Get Random Button is displayed', (tester) async {
      when(() => bloc.state).thenReturn(Empty());
      await tester.pumpWidget(createWidgetUnderTest(bloc));
      expect(find.byKey(kRandomTrivia), findsOneWidget);
    });

    testWidgets('Search Button is displayed', (tester) async {
      when(() => bloc.state).thenReturn(Empty());
      await tester.pumpWidget(createWidgetUnderTest(bloc));
      expect(find.byKey(kConcreteTrivia), findsOneWidget);
    });
    testWidgets('Start Search Text is displayed', (tester) async {
      when(() => bloc.state).thenReturn(Empty());
      await tester.pumpWidget(createWidgetUnderTest(bloc));
      expect(find.text('Start searching'), findsOneWidget);
    });
    testWidgets('Loading Widget should appear when loading', (tester) async {
      await tester.pumpWidget(createWidgetUnderTestWithLoadingState(bloc));
      expect(find.byKey(kLoadingWidget), findsOneWidget);
    });
    testWidgets('Loading indicator should appear when loading', (tester) async {
      await tester.pumpWidget(createWidgetUnderTestWithLoadingState(bloc));
      expect(find.byKey(kProgressIndicator), findsOneWidget);
    });
    testWidgets('Error Message should appear when error Occurred',
        (tester) async {
      await tester.pumpWidget(createWidgetUnderTestWithErrorState(bloc));
      expect(find.text(errorMessage), findsOneWidget);
    });
  });

  group('widget with mock interaction', () {
    testWidgets(
        'Loading indicator should displayed while waiting for Random Number Trivia',
        (tester) async {
      whenListen(bloc, Stream.fromIterable([Empty(), Loading()]));
      when(() => bloc.state).thenReturn(Empty());
      await tester.pumpWidget(createWidgetUnderTest(bloc));
      await tester.tap(find.byKey(kRandomTrivia));
      await tester.pump();
      expect(find.byKey(kProgressIndicator), findsOneWidget);
      verify(() => bloc.add(GetTriviaForRandomNumber())).called(1);
    });

    testWidgets(
        'Loading indicator should displayed while waiting for Concrete Number Trivia',
        (tester) async {
      whenListen(bloc, Stream.fromIterable([Empty(), Loading()]));
      when(() => bloc.state).thenReturn(Empty());
      await tester.pumpWidget(createWidgetUnderTest(bloc));
      await tester.enterText(find.byType(TextField), tTriviaNumber.toString());
      await tester.tap(find.byKey(kConcreteTrivia));
      expect(find.byKey(kProgressIndicator), findsOneWidget);
      verify(() =>
              bloc.add(const GetTriviaForConcreteNumber(tTriviaNumberString)))
          .called(1);
    });

    testWidgets(
        'Number Trivia should displayed when getRandomTriviaNumber success',
        (tester) async {
      whenListen(
        bloc,
        Stream.fromIterable(
          [Empty(), Loading(), const Loaded(trivia: tNumberTrivia)],
        ),
      );
      when(() => bloc.state).thenReturn(Empty());
      await tester.pumpWidget(createWidgetUnderTest(bloc));
      await tester.tap(find.byKey(kRandomTrivia));
      when(() => bloc.state).thenReturn(Loading());
      when(() => bloc.state).thenReturn(const Loaded(trivia: tNumberTrivia));
      await tester.pumpAndSettle();
      expect(find.text(tTriviaText), findsOneWidget);
      verify(() => bloc.add(GetTriviaForRandomNumber())).called(1);
    });

    testWidgets(
        'Number Trivia should displayed when searchTriviaNumber success',
        (tester) async {
      whenListen(
        bloc,
        Stream.fromIterable(
          [Empty(), Loading(), const Loaded(trivia: tNumberTrivia)],
        ),
      );
      when(() => bloc.state).thenReturn(Empty());
      await tester.pumpWidget(createWidgetUnderTest(bloc));
      await tester.enterText(find.byType(TextField), tTriviaNumberString);
      await tester.tap(find.byKey(kConcreteTrivia));
      when(() => bloc.state).thenReturn(Loading());
      when(() => bloc.state).thenReturn(const Loaded(trivia: tNumberTrivia));
      await tester.pumpAndSettle();
      expect(find.text(tTriviaText), findsOneWidget);
      verify(() =>
              bloc.add(const GetTriviaForConcreteNumber(tTriviaNumberString)))
          .called(1);
    });

    testWidgets('Error should displayed when getRandomTriviaNumber failed',
        (tester) async {
      whenListen(
        bloc,
        Stream.fromIterable(
          [Empty(), Loading(), const Error(message: errorMessage)],
        ),
      );
      when(() => bloc.state).thenReturn(Empty());
      await tester.pumpWidget(createWidgetUnderTest(bloc));
      await tester.tap(find.byKey(kRandomTrivia));
      when(() => bloc.state).thenReturn(Loading());
      when(() => bloc.state).thenReturn(const Error(message: errorMessage));
      await tester.pumpAndSettle();
      expect(find.text(errorMessage), findsOneWidget);
      verify(() => bloc.add(GetTriviaForRandomNumber())).called(1);
    });
    testWidgets('Error should displayed when searchTriviaNumber failed',
        (tester) async {
      whenListen(
        bloc,
        Stream.fromIterable(
          [Empty(), Loading(), const Error(message: errorMessage)],
        ),
      );
      when(() => bloc.state).thenReturn(Empty());
      await tester.pumpWidget(createWidgetUnderTest(bloc));
      await tester.enterText(find.byType(TextField), tTriviaNumberString);
      await tester.tap(find.byKey(kConcreteTrivia));
      when(() => bloc.state).thenReturn(Loading());
      when(() => bloc.state).thenReturn(const Error(message: errorMessage));
      await tester.pumpAndSettle();
      expect(find.text(errorMessage), findsOneWidget);
      verify(() =>
              bloc.add(const GetTriviaForConcreteNumber(tTriviaNumberString)))
          .called(1);
    });
  });
}
