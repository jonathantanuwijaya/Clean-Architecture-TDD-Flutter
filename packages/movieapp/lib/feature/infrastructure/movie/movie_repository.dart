import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';

import 'package:dartz/dartz.dart';
import 'package:movieapp/feature/domain/movie/i_movie_repository.dart';
import 'package:movieapp/feature/domain/movie/movie_failure.dart';
import 'package:movieapp/feature/infrastructure/movie/movie_remote_data_source.dart';
import 'package:movieapp/feature/domain/movie/movies.dart';

@injectable
class MovieRepository implements IMovieRepository {
  final MovieRemoteDataSource _movieRemoteDataSource;

  MovieRepository(this._movieRemoteDataSource);

  @override
  Future<Either<MovieFailure, List<Movie>>> getAllMovies(
      {String? moviename}) async {
    try {
      final rawTypeList =
          await _movieRemoteDataSource.getAllMovies();
      final typeList = rawTypeList.map((e) => e.toEntity()).toList();
      debugPrint('DATA FROM REMOTE SOURCE == $typeList');
      return right(typeList);
    } catch (e) {
      return left(const MovieFailure.unexpected());
    }
  }
}
