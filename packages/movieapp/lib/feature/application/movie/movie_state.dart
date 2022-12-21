part of 'movie_bloc.dart';

@freezed
class MovieState with _$MovieState {
  const factory MovieState.initial() = _Initial;
  const factory MovieState.success(List<Movie> movies) = _Success;
  const factory MovieState.failed() = _Failed;
}
