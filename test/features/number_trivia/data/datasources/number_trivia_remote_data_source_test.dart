import 'dart:convert';

import 'package:clean_arch_tdd/core/error/exceptions.dart';
import 'package:clean_arch_tdd/features/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:clean_arch_tdd/features/number_trivia/data/dto/number_trivia_dto.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockHttpClient extends Mock implements http.Client {}

class FakeUri extends Fake implements Uri {}

void main() {
  late NumberTriviaRemoteDataSourceImpl dataSource;
  late MockHttpClient mockHttpClient;

  setUp(() {
    registerFallbackValue(FakeUri());
    mockHttpClient = MockHttpClient();
    dataSource = NumberTriviaRemoteDataSourceImpl(client: mockHttpClient);
  });

  void setUpMockkHttpClientSuccess200() {
    when(() => mockHttpClient.get(any(), headers: any(named: 'headers')))
        .thenAnswer(
            (_) => Future.value(http.Response(fixture('trivia.json'), 200)));
  }

  void setUpMockHttpClientFailure404() {
    when(() => mockHttpClient.get(any(), headers: any(named: 'headers')))
        .thenAnswer(
            (_) => Future.value(http.Response('something went wrong', 404)));
  }

  group('getConcreteNumberTrivia', () {
    final tNumber = 1;
    final tNumberTriviaDto =
        NumberTriviaDto.fromJson(jsonDecode(fixture('trivia.json')));
    test('''should perform a GET Request on an URL with number 
        being the endpoint with application/json header''', () {
      setUpMockkHttpClientSuccess200();

      dataSource.getConcreteNumberTrivia(tNumber);

      verify(() => mockHttpClient.get(
            Uri.parse('http://numbersapi.com/$tNumber'),
            headers: {'Content-Type': 'application/json'},
          ));
    });
    test('should return NumberTrivia when response code is 200', () async {
      //arrange
      setUpMockkHttpClientSuccess200();
      //act
      final result = await dataSource.getConcreteNumberTrivia(tNumber);
      //assert
      expect(result, equals(tNumberTriviaDto));
    });

    test('should throw ServerException when response code is 404 or other',
        () async {
      setUpMockHttpClientFailure404();
      final call = dataSource.getConcreteNumberTrivia;

      expect(
          () => call(tNumber), throwsA(const TypeMatcher<ServerException>()));
    });
  });

  group('getRandomNumberTrivia', () {
    final tNumberTriviaModel =
        NumberTriviaDto.fromJson(json.decode(fixture('trivia.json')));
    test(
        'should perform a GET request on a URL with number being the endpoint and with application/json header',
        () async {
      //arrange
      setUpMockkHttpClientSuccess200();
      //act
      dataSource.getRandomNumberTrivia();
      //assert
      verify(() => mockHttpClient.get(
            Uri.parse('http://numbersapi.com/random'),
            headers: {'Content-Type': 'application/json'},
          ));
    });

    test('should return NumberTrivia when response code is 200', () async {
      setUpMockkHttpClientSuccess200();
      final result = await dataSource.getRandomNumberTrivia();
      expect(result, equals(tNumberTriviaModel));
    });

    test('should throw ServerException when response code is 404 or other',
        () async {
      setUpMockHttpClientFailure404();
      final call = dataSource.getRandomNumberTrivia;
      expect(() => call(), throwsA(const TypeMatcher<ServerException>()));
    });
  });
}
