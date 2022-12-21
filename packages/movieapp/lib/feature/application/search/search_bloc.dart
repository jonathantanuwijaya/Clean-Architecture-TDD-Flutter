import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movieapp/feature/domain/search/search.dart';
import 'package:movieapp/feature/domain/search/search_failure.dart';
import 'package:movieapp/feature/infrastructure/search/search_repository.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchMovieRepository _searchmovieRepository;
  SearchBloc(this._searchmovieRepository) : super(SearchState.init()) {
    on<SearchEvent>((event, emit) async {
      await event.map(started: (event) {
        emit(state.copyWith(isLoading: false));
      }, searchMovie: (event) async {
        final movieList =
            await _searchmovieRepository.searchMovie(event.movieName);
        emit(state.copyWith(isLoading: true));
        emit(movieList.fold((l) => state.failOrSuccess(left(l)),
            (r) => state.copyWith(listOfMovies: r)));
        debugPrint(
            "List of searched movies BLOC  " + state.listOfMovies.toString());
      });
    });
  }
}
