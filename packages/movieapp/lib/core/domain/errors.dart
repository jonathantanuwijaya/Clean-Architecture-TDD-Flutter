import 'failures.dart';

class UnExpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnExpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = 'Encountered a ValueFailure';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}
