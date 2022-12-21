import 'package:freezed_annotation/freezed_annotation.dart';

part 'movies.freezed.dart';

@freezed
abstract class Movie with _$Movie {
  const factory Movie(
      {required int collectionId,
      required String artistName,
      required String trackName,
      required String artworkUrl100,
      required String shortDescription,
      required String longDescription}) = _Movie;
}
