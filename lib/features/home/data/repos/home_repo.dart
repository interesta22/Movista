import 'package:movista_app/features/home/data/models/movie_model.dart';

abstract class HomeRepo {
  Future<List<MovieModel>> fetchDiscoverMovies();
  Future<List<MovieModel>> fetchPopularMovies();
  Future<List<MovieModel>> fetchTopRatedMovies();
  Future<List<MovieModel>> fetchcomingMovies();
  Future<List<MovieModel>> fetchNowPlayingMovies();
}