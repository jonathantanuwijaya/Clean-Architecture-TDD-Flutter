import 'package:dartz/dartz.dart';

import 'package:movieapp/feature/domain/search/search.dart';

import 'search_failure.dart';

abstract class ISearchMovieRepository{
  Future<Either<SearchMovieFailure,List<SearchMovie>>> searchMovie(String movieName);
}