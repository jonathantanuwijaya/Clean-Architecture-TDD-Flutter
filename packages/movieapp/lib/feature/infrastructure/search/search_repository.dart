import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:movieapp/feature/domain/search/i_search_repository.dart';
import 'package:movieapp/feature/domain/search/search.dart';
import 'package:movieapp/feature/domain/search/search_failure.dart';
import 'package:movieapp/feature/infrastructure/search/search_remote_data_source.dart';

@injectable
class SearchMovieRepository implements ISearchMovieRepository {
  final SearchMovieRemoteDataSource _searchMovieRemoteDataSource;

  SearchMovieRepository(this._searchMovieRemoteDataSource);

  @override
  Future<Either<SearchMovieFailure, List<SearchMovie>>> searchMovie(
      String movieName) async {
    try {
      final rawTypeList =
          await _searchMovieRemoteDataSource.getAllMovies(movieName);
      final typeList = rawTypeList.map((e) => e.toEntity()).toList();
      return right(typeList);
    } catch (e) {
      return left(const SearchMovieFailure());
    }
  }
}
