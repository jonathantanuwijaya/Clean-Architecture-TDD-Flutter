import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movieapp/feature/domain/movie/movies.dart';

part 'movie_dto.freezed.dart';
part 'movie_dto.g.dart';

@freezed
class MovieDto with _$MovieDto {
  const MovieDto._();
  const factory MovieDto(
      {@Default(0) int collectionId,
      required String artistName,
      required String trackName,
      required String artworkUrl100,
      @Default('-') String shortDescription,
      required String longDescription}) = _MovieDto;
  factory MovieDto.fromJson(Map<String, dynamic> json) =>
      _$MovieDtoFromJson(json);

  Movie toEntity() => Movie(
      collectionId: collectionId,
      artistName: artistName,
      trackName: trackName,
      artworkUrl100: artworkUrl100,
      shortDescription: shortDescription,
      longDescription: longDescription);
}
