import 'dart:convert';

import 'package:clean_arch_tdd/core/error/exceptions.dart';
import 'package:clean_arch_tdd/features/number_trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:clean_arch_tdd/features/number_trivia/data/dto/number_trivia_dto.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  late MockSharedPreferences mockSharedPreferences;
  late NumberTriviaLocalDataSourceImpl dataSource;

  setUp(() {
    mockSharedPreferences = MockSharedPreferences();
    dataSource =
        NumberTriviaLocalDataSourceImpl(preferences: mockSharedPreferences);
  });

  group('getLastNumberTrivia', () {
    final tNumberTriviaModel =
        NumberTriviaDto.fromJson(jsonDecode(fixture('trivia_cache.json')));
    test(
        'should return number trivia from shared preferences when there is one in the cache',
        () async {
      when(() => mockSharedPreferences.getString(any()))
          .thenReturn(fixture('trivia_cache.json'));

      final result = await dataSource.getLastNumberTrivia();
      verify(() => mockSharedPreferences.getString(cachedNumberTriviaKey))
          .called(1);
      expect(result, equals(tNumberTriviaModel));
    });
    test('should throw CacheException when there is not a cached value',
        () async {
      when(() => mockSharedPreferences.getString(any())).thenReturn(null);

      final call = dataSource.getLastNumberTrivia();
      expect(() => call, throwsA(const TypeMatcher<CacheException>()));
    });
  });

  group('cache numberTrivia', () {
    final tNumberTriviaDto = NumberTriviaDto(number: 1, text: 'test Trivia');
    test('should call shared preferences to cache the data', () async {
      when(() => mockSharedPreferences.setString(any(), any()))
          .thenAnswer((_) async => true);
      //act
      dataSource.cacheNumberTrivia(tNumberTriviaDto);
      //assert
      final expectedJsonString = json.encode(tNumberTriviaDto.toJson());
      verify(() => mockSharedPreferences.setString(
          cachedNumberTriviaKey, expectedJsonString));
    });
  });
}
