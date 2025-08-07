import 'package:dartz/dartz.dart';
import 'package:movista_app/shared/api_service.dart';
import 'package:movista_app/core/errors/failures.dart';
import 'package:movista_app/features/home/data/repos/home_repo.dart';
import 'package:movista_app/features/home/data/models/movie_model.dart';

class HomeRepoImp implements HomeRepo {
  final ApiService apiService;

  HomeRepoImp({required this.apiService});
  @override
  Future<Either<Failures, List<MovieModel>>> fetchDiscoverMovies() async {
    var data = apiService.get('discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=popularity.desc');
    try {
      final response = await data;
      final List<MovieModel>movies = (response['results'] as List)
          .map((movie) => MovieModel.fromJson(movie))
          .toList();
      return Right(movies);
    } catch (e) {
      return Left(ServerFailure());
    }}

    
  @override
  Future<Either<Failures, List<MovieModel>>> fetchNowPlayingMovies() {
    // TODO: implement fetchNowPlayingMovies
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<MovieModel>>> fetchPopularMovies() {
    // TODO: implement fetchPopularMovies
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<MovieModel>>> fetchTopRatedMovies() {
    // TODO: implement fetchTopRatedMovies
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<MovieModel>>> fetchcomingMovies() {
    // TODO: implement fetchcomingMovies
    throw UnimplementedError();
  }
}