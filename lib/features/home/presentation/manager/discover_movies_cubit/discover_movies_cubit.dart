import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movista_app/features/home/data/repos/home_repo.dart';
import 'package:movista_app/features/home/data/models/movie_model.dart';


part 'discover_movies_state.dart';

class DiscoverMoviesCubit extends Cubit<DiscoverMoviesState> {
  DiscoverMoviesCubit(this.homeRepo) : super(DiscoverMoviesInitial());

  final HomeRepo homeRepo ;

  Future<void> fetchDiscoverMovies() async {
    emit(DiscoverMoviesLoading());
    try {
      var result = await homeRepo.fetchDiscoverMovies();
      result.fold(
        (failure) => emit(DiscoverMoviesFailure(errorMessage: failure.errorMessage)),
        (movies) => emit(DiscoverMoviesSuccess(movies: movies)),);
      await Future.delayed(Duration(seconds: 2));
      List<MovieModel> movies = []; // Replace with actual data fetching logic
      emit(DiscoverMoviesSuccess(movies: movies));
    } catch (e) {
      emit(DiscoverMoviesFailure(errorMessage: e.toString()));
    }
  }
}
