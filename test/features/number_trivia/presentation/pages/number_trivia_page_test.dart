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

  testWidgets('Title is displayed', (tester) async {
    await tester.pumpWidget(createWidgetUnderTestWithEmptyState(bloc));
    expect(find.text('Number Trivia Generator'), findsOneWidget);
  });

  testWidgets('Get Random Button is displayed', (tester) async {
    await tester.pumpWidget(createWidgetUnderTestWithEmptyState(bloc));
    expect(find.byKey(const Key('get-random-trivia')), findsOneWidget);
  });

  testWidgets('Search Button is displayed', (tester) async {
    await tester.pumpWidget(createWidgetUnderTestWithEmptyState(bloc));
    expect(find.byKey(const Key('search-trivia')), findsOneWidget);
  });
  testWidgets('Start Search Text is displayed', (tester) async {
    await tester.pumpWidget(createWidgetUnderTestWithEmptyState(bloc));
    expect(find.text('Start searching'), findsOneWidget);
  });
  testWidgets('Loading Widget should appear when loading', (tester) async {
    await tester.pumpWidget(createWidgetUnderTestWithLoadingState(bloc));
    expect(find.byKey(const Key('loading-widget')), findsOneWidget);
  });
  testWidgets('Loading indicator should appear when loading', (tester) async {
    await tester.pumpWidget(createWidgetUnderTestWithLoadingState(bloc));
    expect(find.byKey(const Key('progress-indicator')), findsOneWidget);
  });
  testWidgets('Error Message should appear when error Occurred',
      (tester) async {
    await tester.pumpWidget(createWidgetUnderTestWithErrorState(bloc));
    expect(find.text(errorMessage), findsOneWidget);
  });

  testWidgets(
      'Loading indicator should displayed while waiting for Random Number Trivia',
      (tester) async {
    whenListen(bloc, Stream.fromIterable([Empty(), Loading()]));
    await tester.pumpWidget(createWidgetUnderTestWithEmptyState(bloc));
    await tester.tap(find.byKey(const Key('get-random-trivia')));
    await tester.pump();
    expect(find.byKey(const Key('progress-indicator')), findsOneWidget);
    verify(() => bloc.add(GetTriviaForRandomNumber())).called(1);
  });

  testWidgets(
      'Loading indicator should displayed while waiting for Concrete Number Trivia',
      (tester) async {
    whenListen(bloc, Stream.fromIterable([Empty(), Loading()]));
    await tester.pumpWidget(createWidgetUnderTestWithEmptyState(bloc));
    await tester.enterText(find.byType(TextField), tTriviaNumber.toString());
    await tester.tap(find.byKey(const Key('search-trivia')));
    expect(find.byKey(const Key('progress-indicator')), findsOneWidget);
    verify(() => bloc.add(GetTriviaForConcreteNumber(tTriviaNumber.toString())))
        .called(1);
  });

  testWidgets(
      'Number Trivia should displayed when getRandomTriviaNumber success',
      (tester) async {
    await tester.pumpWidget(createWidgetUnderTestWithLoadedState(bloc));
    await tester.tap(find.byKey(const Key('get-random-trivia')));
    await tester.pumpAndSettle();
    expect(find.text(tTriviaText), findsOneWidget);
    verify(() => bloc.add(GetTriviaForRandomNumber())).called(1);
  });

  testWidgets('Number Trivia should displayed when searchTriviaNumber success',
      (tester) async {
    await tester.pumpWidget(createWidgetUnderTestWithLoadedState(bloc));
    await tester.enterText(find.byType(TextField), tTriviaNumber.toString());
    await tester.tap(find.byKey(const Key('search-trivia')));
    await tester.pumpAndSettle();
    expect(find.text(tTriviaText), findsOneWidget);
    verify(() => bloc.add(GetTriviaForConcreteNumber(tTriviaNumber.toString())))
        .called(1);
  });
}
