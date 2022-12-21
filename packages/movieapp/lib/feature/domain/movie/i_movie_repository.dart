import 'package:dartz/dartz.dart';

import 'package:movieapp/feature/domain/movie/movies.dart';

import 'movie_failure.dart';

abstract class IMovieRepository{
  Future<Either<MovieFailure,List<Movie>>> getAllMovies();
}