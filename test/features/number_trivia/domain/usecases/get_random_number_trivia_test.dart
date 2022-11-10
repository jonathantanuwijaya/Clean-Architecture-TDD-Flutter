import 'package:clean_arch_tdd/core/usecase/usecase.dart';
import 'package:clean_arch_tdd/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_arch_tdd/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:clean_arch_tdd/features/number_trivia/domain/usecases/get_random_number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

final tNumber = 1;
final tNumberTrivia = NumberTrivia(text: 'text', number: 1);

void main() {
  late GetRandomNumberTrivia useCase;
  late MockNumberTriviaRepository repository;
  setUp(() async {
    repository = MockNumberTriviaRepository();
    useCase = GetRandomNumberTrivia(repository);
  });

  test('should get trivia number from repository', () async {
    when(() => repository.getRandomNumberTrivia())
        .thenAnswer((_) async => right(tNumberTrivia));
    final result = await useCase(NoParams());
    expect(result, right(tNumberTrivia));
    verify(() => repository.getRandomNumberTrivia()).called(1);
    verifyNoMoreInteractions(repository);
  });
}
