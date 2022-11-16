import 'dart:convert';

import 'package:clean_arch_tdd/core/error/exceptions.dart';
import 'package:clean_arch_tdd/features/number_trivia/data/dto/number_trivia_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class NumberTriviaLocalDataSource {
  Future<NumberTriviaDto> getLastNumberTrivia();

  Future<void> cacheNumberTrivia(NumberTriviaDto triviaToCache);
}

const cachedNumberTriviaKey = 'CACHED_NUMBER_TRIVIA';

class NumberTriviaLocalDataSourceImpl implements NumberTriviaLocalDataSource {
  final SharedPreferences preferences;

  NumberTriviaLocalDataSourceImpl({required this.preferences});

  @override
  Future<void> cacheNumberTrivia(NumberTriviaDto triviaToCache) {
    return preferences.setString(
        cachedNumberTriviaKey, json.encode(triviaToCache.toJson()));
  }

  @override
  Future<NumberTriviaDto> getLastNumberTrivia() {
    final jsonString = preferences.getString(cachedNumberTriviaKey);
    if (jsonString != null) {
      return Future.value(NumberTriviaDto.fromJson(json.decode(jsonString)));
    } else {
      throw CacheException();
    }
  }
}
