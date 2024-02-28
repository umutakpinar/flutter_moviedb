part of 'trending_movies_bloc.dart';

@immutable
sealed class TrendingMoviesEvent {}

class FetchTrendingMoviesEvent extends TrendingMoviesEvent{}
