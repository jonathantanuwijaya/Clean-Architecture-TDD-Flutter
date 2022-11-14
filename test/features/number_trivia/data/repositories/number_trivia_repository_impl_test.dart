import 'package:clean_arch_tdd/core/error/exceptions.dart';
import 'package:clean_arch_tdd/core/error/failures.dart';
import 'package:clean_arch_tdd/core/usecase/network_info.dart';
import 'package:clean_arch_tdd/features/number_trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:clean_arch_tdd/features/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:clean_arch_tdd/features/number_trivia/data/dto/number_trivia_dto.dart';
import 'package:clean_arch_tdd/features/number_trivia/data/repositories/number_trivia_repository_impl.dart';
import 'package:clean_arch_tdd/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockRemoteDataSource extends Mock
    implements NumberTriviaRemoteDataSource {}

class MockLocalDataSource extends Mock implements NumberTriviaLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  late NumberTriviaRepositoryImpl repository;
  late MockRemoteDataSource mockRemoteDataSource;
  late MockLocalDataSource mockLocalDataSource;
  late MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockLocalDataSource = MockLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = NumberTriviaRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      networkInfo: mockNetworkInfo,
    );
  });

  void runTestOnline(Function body) {
    group('device is online', () {
      setUp(() => when(() => mockNetworkInfo.isConnected)
          .thenAnswer((_) async => true));
      body();
    });
  }

  void runTestOffline(Function body) {
    group('device is online', () {
      setUp(() => when(() => mockNetworkInfo.isConnected)
          .thenAnswer((_) async => false));
      body();
    });
  }

  group('getConcreteNumberTrivia', () {
    const tNumber = 1;
    const tNumberTriviaDto = NumberTriviaDto(number: 1, text: 'text');
    const NumberTrivia tNumberTrivia = tNumberTriviaDto;

    test('should check if the device is online', () async {
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteDataSource.getConcreteNumberTrivia(any()))
          .thenAnswer((_) async => tNumberTriviaDto);
      when(() => mockLocalDataSource.cacheNumberTrivia(tNumberTriviaDto))
          .thenAnswer((_) async => Future.value());
      repository.getConcreteNumberTrivia(tNumber);
      verify(() => mockNetworkInfo.isConnected).called(1);
    });

    runTestOnline(() {
      test(
          'should return remote data when the call to remote data source is successfull',
          () async {
        when(() => mockRemoteDataSource.getConcreteNumberTrivia(any()))
            .thenAnswer((_) async => tNumberTriviaDto);
        when(() => mockLocalDataSource.cacheNumberTrivia(tNumberTriviaDto))
            .thenAnswer((_) async => Future.value());
        final result = await repository.getConcreteNumberTrivia(tNumber);
        verify(() => mockRemoteDataSource.getConcreteNumberTrivia(tNumber));
        expect(result, equals(right(tNumberTrivia)));
      });
      test(
          'should cache the data locally when the call to remote data source is successfull',
          () async {
        when(() => mockRemoteDataSource.getConcreteNumberTrivia(any()))
            .thenAnswer((_) async => tNumberTriviaDto);
        when(() => mockLocalDataSource.cacheNumberTrivia(tNumberTriviaDto))
            .thenAnswer((_) async => Future.value());

        await repository.getConcreteNumberTrivia(tNumber);
        verify(() => mockRemoteDataSource.getConcreteNumberTrivia(tNumber));
        verify(() => mockLocalDataSource.cacheNumberTrivia(tNumberTriviaDto));
      });
      test(
          'should return server failure when the call to remote data source is failed',
          () async {
        when(() => mockRemoteDataSource.getConcreteNumberTrivia(any()))
            .thenThrow(ServerException());
        final result = await repository.getConcreteNumberTrivia(tNumber);
        verify(() => mockRemoteDataSource.getConcreteNumberTrivia(tNumber));
        verifyZeroInteractions(mockLocalDataSource);
        expect(result, equals(left(ServerFailure())));
      });
    });

    runTestOffline(() {
      const tNumber = 1;
      const tNumberTriviaDto = NumberTriviaDto(number: 1, text: 'text');
      const NumberTrivia tNumberTrivia = tNumberTriviaDto;
      setUp(() => when(() => mockNetworkInfo.isConnected)
          .thenAnswer((_) async => false));

      test('should return locally cache data when the cached data is present',
          () async {
        when(() => mockLocalDataSource.getLastNumberTrivia())
            .thenAnswer((_) async => tNumberTriviaDto);
        final result = await repository.getConcreteNumberTrivia(tNumber);
        verifyZeroInteractions(mockRemoteDataSource);
        expect(result, equals(right(tNumberTrivia)));
      });
      test('should return Cache Failure when there is no cached data present',
          () async {
        when(() => mockLocalDataSource.getLastNumberTrivia())
            .thenThrow(CacheException());
        final result = await repository.getConcreteNumberTrivia(tNumber);
        verifyZeroInteractions(mockRemoteDataSource);
        expect(result, equals(left(CacheFailure())));
      });
    });
  });
  group('getRandomNumberTrivia', () {
    const tNumberTriviaDto = NumberTriviaDto(number: 1, text: 'text');
    const NumberTrivia tNumberTrivia = tNumberTriviaDto;

    test('should check if the device is online', () async {
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      when(() => mockRemoteDataSource.getRandomNumberTrivia())
          .thenAnswer((_) async => tNumberTriviaDto);
      when(() => mockLocalDataSource.cacheNumberTrivia(tNumberTriviaDto))
          .thenAnswer((_) async => Future.value());
      repository.getRandomNumberTrivia();
      verify(() => mockNetworkInfo.isConnected).called(1);
    });

    runTestOnline(() {
      test(
          'should return remote data when the call to remote data source is successfull',
          () async {
        when(() => mockRemoteDataSource.getRandomNumberTrivia())
            .thenAnswer((_) async => tNumberTriviaDto);
        when(() => mockLocalDataSource.cacheNumberTrivia(tNumberTriviaDto))
            .thenAnswer((_) async => Future.value());
        final result = await repository.getRandomNumberTrivia();
        verify(() => mockRemoteDataSource.getRandomNumberTrivia());
        expect(result, equals(right(tNumberTrivia)));
      });
      test(
          'should cache the data locally when the call to remote data source is successfull',
          () async {
        when(() => mockRemoteDataSource.getRandomNumberTrivia())
            .thenAnswer((_) async => tNumberTriviaDto);
        when(() => mockLocalDataSource.cacheNumberTrivia(tNumberTriviaDto))
            .thenAnswer((_) async => Future.value());

        await repository.getRandomNumberTrivia();
        verify(() => mockRemoteDataSource.getRandomNumberTrivia());
        verify(() => mockLocalDataSource.cacheNumberTrivia(tNumberTriviaDto));
      });
      test(
          'should return server failure when the call to remote data source is failed',
          () async {
        when(() => mockRemoteDataSource.getRandomNumberTrivia())
            .thenThrow(ServerException());
        final result = await repository.getRandomNumberTrivia();
        verify(() => mockRemoteDataSource.getRandomNumberTrivia());
        verifyZeroInteractions(mockLocalDataSource);
        expect(result, equals(left(ServerFailure())));
      });
    });

    runTestOffline(() {
      const tNumber = 1;
      const tNumberTriviaDto = NumberTriviaDto(number: 1, text: 'text');
      const NumberTrivia tNumberTrivia = tNumberTriviaDto;
      setUp(() => when(() => mockNetworkInfo.isConnected)
          .thenAnswer((_) async => false));

      test('should return locally cache data when the cached data is present',
          () async {
        when(() => mockLocalDataSource.getLastNumberTrivia())
            .thenAnswer((_) async => tNumberTriviaDto);
        final result = await repository.getConcreteNumberTrivia(tNumber);
        verifyZeroInteractions(mockRemoteDataSource);
        expect(result, equals(right(tNumberTrivia)));
      });
      test('should return Cache Failure when there is no cached data present',
          () async {
        when(() => mockLocalDataSource.getLastNumberTrivia())
            .thenThrow(CacheException());
        final result = await repository.getConcreteNumberTrivia(tNumber);
        verifyZeroInteractions(mockRemoteDataSource);
        expect(result, equals(left(CacheFailure())));
      });
    });
  });
}
