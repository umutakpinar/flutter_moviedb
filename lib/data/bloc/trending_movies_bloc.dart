import 'package:bloc/bloc.dart';
import 'package:flutter_moviedb/data/model/trending_movies_weekly.dart';
import 'package:flutter_moviedb/data/service/api/moviedb.dart';
import 'package:meta/meta.dart';

part 'trending_movies_event.dart';
part 'trending_movies_state.dart';

class TrendingMoviesBloc extends Bloc<TrendingMoviesEvent, TrendingMoviesState> {
  TrendingMoviesBloc() : super(TrendingMoviesInitialState()) {
    on<FetchTrendingMoviesEvent>((event, emit) async {
      emit(TrendingMoviesLoadingState());
      try{
        final api = MovieDBAPI();
        final response = await api.getTopMoviesThisWeek();
        if(response.statusCode == 200){
          var results = TrendingMoviesWeekly.fromJson(response.data);
          emit(TrendingMoviesSuccessState(results: results));
        }else{
          throw(Exception("Error while fetching data -> status_code : ${response.statusCode}, is_response_null : ${response.data == null ? "null" : "not_null"}"));
        }
      }catch(e) {
        print(e.toString());
        emit(TrendingMoviesErrorState());
      }
    });
  }
}
