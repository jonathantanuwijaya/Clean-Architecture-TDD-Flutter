import 'package:injectable/injectable.dart';
import 'package:movieapp/core/infrastructure/api_helper.dart';
import 'package:movieapp/core/domain/base_entity.dart';
import 'package:movieapp/feature/infrastructure/search/dto/search_dto.dart';

@injectable
class SearchMovieRemoteDataSource {
  final ApiHelper _apiService;

  SearchMovieRemoteDataSource(this._apiService);

  Future<List<SearchMovieDto>> getAllMovies(String moviename) async {
    BaseEntity entity = await _apiService.get(
        path: 'https://itunes.apple.com/search', queryParams: moviename);
    return List<SearchMovieDto>.from(
      (entity.results as List).map(
        (e) => SearchMovieDto.fromJson(e),
      ),
    );
  }
}
