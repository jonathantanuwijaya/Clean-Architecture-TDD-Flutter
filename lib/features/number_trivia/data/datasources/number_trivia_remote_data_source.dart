import 'dart:convert';

import 'package:clean_arch_tdd/core/error/exceptions.dart';
import 'package:clean_arch_tdd/features/number_trivia/data/dto/number_trivia_dto.dart';
import 'package:http/http.dart' as http;

abstract class NumberTriviaRemoteDataSource {
  Future<NumberTriviaDto> getConcreteNumberTrivia(int number);

  Future<NumberTriviaDto> getRandomNumberTrivia();
}

class NumberTriviaRemoteDataSourceImpl implements NumberTriviaRemoteDataSource {
  final http.Client client;

  NumberTriviaRemoteDataSourceImpl({required this.client});

  @override
  Future<NumberTriviaDto> getConcreteNumberTrivia(int number) {
    return _getTriviaFromUrl('http://numbersapi.com/$number');
  }

  @override
  Future<NumberTriviaDto> getRandomNumberTrivia() {
    return _getTriviaFromUrl('http://numbersapi.com/random');
  }

  Future<NumberTriviaDto> _getTriviaFromUrl(String url) async {
    final response = await client.get(
      Uri.parse(url),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode == 200) {
      return NumberTriviaDto.fromJson(jsonDecode(response.body));
    } else {
      throw ServerException();
    }
  }
}
