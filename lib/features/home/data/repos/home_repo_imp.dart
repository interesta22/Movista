import 'package:dio/dio.dart';
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
    var data = apiService.get(
      'discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=popularity.desc',
    );
    try {
      final response = await data;
      final List<MovieModel> movies = (response['results'] as List)
          .map((movie) => MovieModel.fromJson(movie))
          .toList();
      return Right(movies);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<MovieModel>>> fetchNowPlayingMovies() async {
    var data = apiService.get('movie/now_playing?language=en-US&page=1');
    try {
      final response = await data;
      final List<MovieModel> movies = (response['results'] as List)
          .map((movie) => MovieModel.fromJson(movie))
          .toList();
      return Right(movies);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<MovieModel>>> fetchPopularMovies() async {
    var data = apiService.get('movie/popular?language=en-US&page=1');
    try {
      final response = await data;
      final List<MovieModel> movies = (response['results'] as List)
          .map((movie) => MovieModel.fromJson(movie))
          .toList();
      return Right(movies);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<MovieModel>>> fetchTopRatedMovies() async {
    var data = apiService.get('movie/top_rated?language=en-US&page=1');
    try {
      final response = await data;
      final List<MovieModel> movies = (response['results'] as List)
          .map((movie) => MovieModel.fromJson(movie))
          .toList();
      return Right(movies);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<MovieModel>>> fetchcomingMovies() async {
    var data = apiService.get('movie/upcoming?language=en-US&page=1');
    try {
      final response = await data;
      final List<MovieModel> movies = (response['results'] as List)
          .map((movie) => MovieModel.fromJson(movie))
          .toList();
      return Right(movies);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
