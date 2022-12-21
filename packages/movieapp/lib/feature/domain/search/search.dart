import 'package:freezed_annotation/freezed_annotation.dart';
part 'search.freezed.dart';

@freezed
abstract class SearchMovie with _$SearchMovie {
  const factory SearchMovie(
      {required String artistName,
      required String artworkUrl100,
      required String longDescription}) = _SearchMovie;
}
