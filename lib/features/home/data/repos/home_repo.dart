import 'package:dartz/dartz.dart';
import 'package:movista_app/core/errors/failures.dart';
import 'package:movista_app/features/home/data/models/movie_model.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<MovieModel>>> fetchDiscoverMovies();
  Future<Either<Failures, List<MovieModel>>> fetchPopularMovies();
  Future<Either<Failures, List<MovieModel>>> fetchTopRatedMovies();
  Future<Either<Failures, List<MovieModel>>> fetchcomingMovies();
  Future<Either<Failures, List<MovieModel>>> fetchNowPlayingMovies();
}