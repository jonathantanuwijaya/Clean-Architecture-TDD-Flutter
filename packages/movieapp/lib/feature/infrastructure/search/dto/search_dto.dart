import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movieapp/feature/domain/movie/movies.dart';
import 'package:movieapp/feature/domain/search/search.dart';

part 'search_dto.freezed.dart';
part 'search_dto.g.dart';

@freezed
class SearchMovieDto with _$SearchMovieDto {
  const SearchMovieDto._();
  const factory SearchMovieDto(
      {required String artistName,
      required String artworkUrl100,
      required String longDescription}) = _SearchMovieDto;

  factory SearchMovieDto.fromJson(Map<String, dynamic> json) =>
      _$SearchMovieDtoFromJson(json);

  SearchMovie toEntity() => SearchMovie(
      artistName: artistName,
      artworkUrl100: artworkUrl100,
      longDescription: longDescription);
}
