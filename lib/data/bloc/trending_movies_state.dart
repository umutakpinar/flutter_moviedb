part of 'trending_movies_bloc.dart';

@immutable
sealed class TrendingMoviesState {}

final class TrendingMoviesInitialState extends TrendingMoviesState {}

final class TrendingMoviesLoadingState extends TrendingMoviesState {}

final class TrendingMoviesSuccessState extends TrendingMoviesState {
  final TrendingMoviesWeekly results;
  TrendingMoviesSuccessState({required this.results});
}

final class TrendingMoviesErrorState extends TrendingMoviesState {}
