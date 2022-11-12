import 'package:clean_arch_tdd/features/number_trivia/data/dto/number_trivia_dto.dart';

abstract class NumberTriviaLocalDataSource{
  Future<NumberTriviaDto> getLastNumberTrivia();
  Future<void> cacheNumberTrivia(NumberTriviaDto triviaToCache);
}