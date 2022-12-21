import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_failure.freezed.dart';

@freezed
abstract class MovieFailure with _$MovieFailure {
  const factory MovieFailure.unexpected() = _Unexpected;
  
}
