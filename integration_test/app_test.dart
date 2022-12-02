import 'package:bloc_test/bloc_test.dart';
import 'package:clean_arch_tdd/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_arch_tdd/features/number_trivia/presentation/bloc/number_trivia_bloc.dart';
import 'package:clean_arch_tdd/features/number_trivia/presentation/pages/number_trivia_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

part 'helper.dart';

class MockNumberTriviaBloc
    extends MockBloc<NumberTriviaEvent, NumberTriviaState>
    implements NumberTriviaBloc {}

void main() {
  late NumberTriviaBloc bloc;
  setUp(() => bloc = MockNumberTriviaBloc());
  testWidgets('Tapping on the Get Random Button excerpt get the Trivia Number',
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
}
