import 'package:clean_arch_tdd/features/number_trivia/data/dto/number_trivia_dto.dart';

abstract class NumberTriviaRemoteDataSource {
  Future<NumberTriviaDto> getConcreteNumberTrivia(int number);

  Future<NumberTriviaDto> getRandomNumberTrivia();
}
