import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({ 
     required String failedValue
   }
   
  ) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    required String password
   }) = ShortPassword<T>;
  // const factory ValueFailure.unexpected() = _Unexpected;
}

// @freezed
// abstract class MovieFailure with _$MovieFailure {
//   const factory MovieFailure.unexpected() = _Unexpected;

// }
