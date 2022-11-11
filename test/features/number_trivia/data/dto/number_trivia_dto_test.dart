import 'dart:convert';

import 'package:clean_arch_tdd/features/number_trivia/data/dto/number_trivia_dto.dart';
import 'package:clean_arch_tdd/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tNumberTriviaDto = NumberTriviaDto(number: 1, text: 'Test Text');
  test('should be a subclass of NumberTrivia entity', () {
    expect(tNumberTriviaDto, isA<NumberTrivia>());
  });
  group('from JSON', () {
    test('should return a valid Number when JSON number is an integer',
        () async {
      final Map<String, dynamic> jsonMap = jsonDecode(fixture('trivia.json'));
      final result = NumberTriviaDto.fromJson(jsonMap);
      expect(result, tNumberTriviaDto);
    });
    test(
        'should return a valid Number when JSON number is regarded as a double',
        () async {
      final Map<String, dynamic> jsonMap =
          jsonDecode(fixture('trivia_double.json'));
      final result = NumberTriviaDto.fromJson(jsonMap);
      expect(result, tNumberTriviaDto);
    });
  });
  group('toJson', () {
    test('toJson should return JSON map containing the proper data', () async {
      final result = tNumberTriviaDto.toJson();
      final expectedMap = {
        "text": "Test Text",
        "number": 1,
      };
      expect(result, expectedMap);
    });
  });
}
