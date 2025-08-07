part of 'discover_movies_cubit.dart';

@immutable
sealed class DiscoverMoviesState {}

final class DiscoverMoviesInitial extends DiscoverMoviesState {}
final class DiscoverMoviesLoading extends DiscoverMoviesState {}
final class DiscoverMoviesSuccess extends DiscoverMoviesState {
  final List<MovieModel> movies;
  DiscoverMoviesSuccess({required this.movies});
}
final class DiscoverMoviesFailure extends DiscoverMoviesState {
  final String errorMessage;
  DiscoverMoviesFailure({required this.errorMessage});
}
