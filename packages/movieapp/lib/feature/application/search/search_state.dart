part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const SearchState._();
  const factory SearchState(
      {required bool isLoading,
      required List<SearchMovie> listOfMovies,
      required Option<Either<SearchMovieFailure, SearchMovie>>
          failureOrDataOption}) = _SearchState;

  factory SearchState.init() => SearchState(
      isLoading: false, listOfMovies: [], failureOrDataOption: none());

  SearchState get unmodified =>
      copyWith(isLoading: false, failureOrDataOption: none());
  SearchState failOrSuccess(
    [Either<SearchMovieFailure, SearchMovie>? failOrSuccess]
  ) => unmodified.copyWith(failureOrDataOption: optionOf(failOrSuccess));
}
