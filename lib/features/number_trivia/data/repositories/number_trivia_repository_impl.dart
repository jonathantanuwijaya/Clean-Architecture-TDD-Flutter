import 'package:clean_arch_tdd/core/error/exceptions.dart';
import 'package:clean_arch_tdd/core/error/failures.dart';
import 'package:clean_arch_tdd/core/usecase/network_info.dart';
import 'package:clean_arch_tdd/features/number_trivia/data/datasources/number_trivia_local_data_source.dart';
import 'package:clean_arch_tdd/features/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'package:clean_arch_tdd/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_arch_tdd/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';

import '../dto/number_trivia_dto.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  final NumberTriviaRemoteDataSource remoteDataSource;
  final NumberTriviaLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  NumberTriviaRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(
      int number) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteTrivia =
            await remoteDataSource.getConcreteNumberTrivia(number);
        localDataSource.cacheNumberTrivia(remoteTrivia);
        return right(remoteTrivia);
      } on ServerException {
        return left(ServerFailure());
      }
    } else {
      try {
        final localTrivia = await localDataSource.getLastNumberTrivia();
        return right(localTrivia);
      } on CacheException {
        return left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteTrivia =
            await remoteDataSource.getRandomNumberTrivia();
        localDataSource.cacheNumberTrivia(remoteTrivia);
        return right(remoteTrivia);
      } on ServerException {
        return left(ServerFailure());
      }
    } else {
      try {
        final localTrivia = await localDataSource.getLastNumberTrivia();
        return right(localTrivia);
      } on CacheException {
        return left(CacheFailure());
      }
    }
  }
}
