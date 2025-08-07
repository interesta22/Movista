part of 'categeory_movies_cubit.dart';

@immutable
sealed class CategeoryMoviesState {}

final class CategeoryMoviesInitial extends CategeoryMoviesState {}
final class CategeoryMoviesLoading extends CategeoryMoviesState {}
final class CategeoryMoviesSuccess extends CategeoryMoviesState {
  final List<MovieModel> movies;
  CategeoryMoviesSuccess({required this.movies});
}
final class CategeoryMoviesFailure extends CategeoryMoviesState {
  final String errorMessage;
  CategeoryMoviesFailure({required this.errorMessage});
}
