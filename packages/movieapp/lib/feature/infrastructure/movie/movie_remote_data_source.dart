import 'package:injectable/injectable.dart';
import 'package:movieapp/core/infrastructure/api_helper.dart';
import 'package:movieapp/core/domain/base_entity.dart';

import 'dto/movie_dto.dart';

@injectable
class MovieRemoteDataSource {
  final ApiHelper _apiService;

  MovieRemoteDataSource(this._apiService);

  Future<List<MovieDto>> getAllMovies() async {
    BaseEntity entity =
        await _apiService.get(path: 'https://itunes.apple.com/search');
    return List<MovieDto>.from(
      (entity.results as List).map(
        (e) => MovieDto.fromJson(e),
      ),
    );
  }
}
