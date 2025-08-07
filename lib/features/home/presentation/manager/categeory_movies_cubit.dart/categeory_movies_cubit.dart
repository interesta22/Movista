import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:movista_app/features/home/data/repos/home_repo.dart';
import 'package:movista_app/features/home/data/models/movie_model.dart';

part 'categeory_movies_state.dart';

class CategeoryMoviesCubit extends Cubit<CategeoryMoviesState> {
  CategeoryMoviesCubit(this.homeRepo) : super(CategeoryMoviesInitial());

  final HomeRepo homeRepo;
  Future<void> fetchDiscoverMovies() async {
    emit(CategeoryMoviesLoading());
    try {
      var result = await homeRepo.fetchDiscoverMovies();
      result.fold(
        (failure) => emit(CategeoryMoviesFailure(errorMessage: failure.errorMessage)),
        (movies) => emit(CategeoryMoviesSuccess(movies: movies)),); // Replace with actual data fetching logic
    } catch (e) {
      emit(CategeoryMoviesFailure(errorMessage: e.toString()));
    }
  }
}
