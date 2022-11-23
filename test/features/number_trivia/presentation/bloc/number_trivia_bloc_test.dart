import 'package:clean_arch_tdd/core/error/failures.dart';
import 'package:clean_arch_tdd/core/usecase/usecase.dart';
import 'package:clean_arch_tdd/core/utils/input_converter.dart';
import 'package:clean_arch_tdd/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_arch_tdd/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:clean_arch_tdd/features/number_trivia/domain/usecases/get_random_number_trivia.dart';
import 'package:clean_arch_tdd/features/number_trivia/presentation/bloc/number_trivia_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGetConcreteNumberTrivia extends Mock
    implements GetConcreteNumberTrivia {}

class MockGetRandomNumberTrivia extends Mock implements GetRandomNumberTrivia {}

class MockInputConverter extends Mock implements InputConverter {}

void main() {
  late NumberTriviaBloc bloc;
  late MockGetConcreteNumberTrivia mockGetConcreteNumberTrivia;
  late MockGetRandomNumberTrivia mockGetRandomNumberTrivia;
  late MockInputConverter mockInputConverter;

  setUp(() {
    mockGetConcreteNumberTrivia = MockGetConcreteNumberTrivia();
    mockGetRandomNumberTrivia = MockGetRandomNumberTrivia();
    mockInputConverter = MockInputConverter();

    bloc = NumberTriviaBloc(
        getConcreteNumberTrivia: mockGetConcreteNumberTrivia,
        getRandomNumberTrivia: mockGetRandomNumberTrivia,
        inputConverter: mockInputConverter);
  });

  test('initial state should be empty', () async {
    //assert
    expect(bloc.state, equals(Empty()));
  });

  group('GetTriviaForConcreteNumber', () {
    const tNumberString = '1';
    const tNumberParsed = 1;
    const tNumberTrivia = NumberTrivia(number: 1, text: 'test trivia');

    void setUpMockInputConverterSuccess() =>
        when(() => mockInputConverter.stringToUnsignedInteger(any()))
            .thenReturn(const Right(tNumberParsed));

    test(
        'should call the InputConverter to validate and convert the string to an unsigned integer',
        () async* {
      //arrange
      setUpMockInputConverterSuccess();
      //act
      bloc.add(const GetTriviaForConcreteNumber(tNumberString));
      await untilCalled(
          () => mockInputConverter.stringToUnsignedInteger(any()));
      //assert
      verify(() => mockInputConverter.stringToUnsignedInteger(tNumberString));
    });

    test('should emit [Error] when the inputs is invalid.', () async* {
      //arrange
      when(() => mockInputConverter.stringToUnsignedInteger(any()))
          .thenReturn(Left(InvalidInputFailure()));
      //assert later
      final expected = [
        Empty(),
        const Error(message: invalidInputMessage),
      ];
      expectLater(bloc, emitsInOrder(expected));
      //act
      bloc.add(const GetTriviaForConcreteNumber(tNumberString));
    });

    test('Should get data from the concrete use case', () async* {
      //arrange
      setUpMockInputConverterSuccess();
      when(() => mockGetConcreteNumberTrivia(any()))
          .thenAnswer((_) async => const Right(tNumberTrivia));
      //act
      bloc.add(const GetTriviaForConcreteNumber(tNumberString));
      await untilCalled(() => mockGetRandomNumberTrivia(any()));

      //assert
      verify(() =>
          mockGetConcreteNumberTrivia(const Params(number: tNumberParsed)));
    });

    test('should emit [Loading, Loaded] when data is gotten successfully',
        () async* {
      //arrange
      setUpMockInputConverterSuccess();
      when(() => mockGetConcreteNumberTrivia(any()))
          .thenAnswer((_) async => const Right(tNumberTrivia));
      //assert later
      final expected = [
        Empty(),
        Loading(),
        const Loaded(trivia: tNumberTrivia)
      ];
      expectLater(bloc, emitsInOrder(expected));
      //act
      bloc.add(const GetTriviaForConcreteNumber(tNumberString));
    });

    test('should emit [Loading, Error] when getting data fails', () async* {
      //arrange
      setUpMockInputConverterSuccess();
      when(() => mockGetConcreteNumberTrivia(any()))
          .thenAnswer((_) async => Left(ServerFailure()));
      //assert later
      final expected = [
        Empty(),
        Loading(),
        const Error(message: serverFailureMessage)
      ];
      expectLater(bloc, emitsInOrder(expected));
      //act
      bloc.add(const GetTriviaForConcreteNumber(tNumberString));
    });

    test(
        'should emit [Loading, Error] with a proper message for the error when getting data fails',
        () async* {
      //arrange
      setUpMockInputConverterSuccess();
      when(() => mockGetConcreteNumberTrivia(any()))
          .thenAnswer((_) async => Left(ServerFailure()));
      //assert later
      final expected = [
        Empty(),
        Loading(),
        const Error(message: cacheFailureMessage)
      ];
      expectLater(bloc, emitsInOrder(expected));
      //act
      bloc.add(const GetTriviaForConcreteNumber(tNumberString));
    });
  });

  group('GetTriviaForRandomNumber', () {
    const tNumberTrivia = NumberTrivia(number: 1, text: 'test trivia');

    test('Should get data from the random use case', () async* {
      //arrange
      when(() => mockGetRandomNumberTrivia(any()))
          .thenAnswer((_) async => const Right(tNumberTrivia));
      //act
      bloc.add(GetTriviaForRandomNumber());
      await untilCalled(() => mockGetRandomNumberTrivia(any()));

      //assert
      verify(() => mockGetRandomNumberTrivia(NoParams()));
    });

    test('should emit [Loading, Loaded] when data is gotten successfully',
        () async* {
      //arrange
      when(() => mockGetRandomNumberTrivia(any()))
          .thenAnswer((_) async => const Right(tNumberTrivia));
      //assert later
      final expected = [
        Empty(),
        Loading(),
        const Loaded(trivia: tNumberTrivia)
      ];
      expectLater(bloc, emitsInOrder(expected));
      //act
      bloc.add(GetTriviaForRandomNumber());
    });

    test('should emit [Loading, Error] when getting data fails', () async* {
      //arrange
      when(() => mockGetRandomNumberTrivia(any()))
          .thenAnswer((_) async => Left(ServerFailure()));
      //assert later
      final expected = [
        Empty(),
        Loading(),
        const Error(message: serverFailureMessage)
      ];
      expectLater(bloc, emitsInOrder(expected));
      //act
      bloc.add(GetTriviaForRandomNumber());
    });

    test(
        'should emit [Loading, Error] with a proper message for the error when getting data fails',
        () async* {
      //arrange
      when(() => mockGetRandomNumberTrivia(any()))
          .thenAnswer((_) async => Left(ServerFailure()));
      //assert later
      final expected = [
        Empty(),
        Loading(),
        const Error(message: cacheFailureMessage)
      ];
      expectLater(bloc, emitsInOrder(expected));
      //act
      bloc.add(GetTriviaForRandomNumber());
    });
  });
}
