import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movieapp/feature/domain/movie/movies.dart';
import 'package:movieapp/feature/infrastructure/movie/movie_repository.dart';

part 'movie_event.dart';
part 'movie_state.dart';
part 'movie_bloc.freezed.dart';

@injectable
class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final MovieRepository _movieRepository;

  MovieBloc(this._movieRepository) : super(const _Initial()) {
    on<MovieEvent>((event, emit) async {
      await event.map(gettingAll: (e) async {
        final movieList = await _movieRepository.getAllMovies();
        emit(movieList.fold(
            (l) => MovieState.failed(), (r) => MovieState.success(r)));

      });
    });
  }
}
