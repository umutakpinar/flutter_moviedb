import 'package:dio/dio.dart';
import 'package:flutter_moviedb/core/api_constants.dart';

class MovieDBAPI {
  late final Dio _api;
  
  MovieDBAPI(){
    _api = Dio(
      BaseOptions(
        baseUrl: "https://api.themoviedb.org/3/",
        headers: {
          'accept' : 'application/json',
          'Authorization' : 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJiODBhMjkxOTdlZmJlMjhkNWNmYjJiZGVkNTU4YzI2MCIsInN1YiI6IjY1ZGRmMTE2M2ZmMmRmMDE2NDBhYWUwOCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.omEKC619gF56Xg-Fhah0QWk7-NerwfRnEhoSjAXrcDo'
        }
      )
    );
  }

  Future<Response> getTopMoviesThisWeek() async {
    return await _api.get(top_movies_this_week_extension_url);
  }

  Future<Response> getPopularMovies() async {
    return await _api.get(top_movies_this_week_extension_url);
  }

  Future<Response> getNowPlayinMovies() async {
    return await _api.get(top_movies_this_week_extension_url);
  }

  Future<Response> getTopRatedMovies() async {
    return await _api.get(top_movies_this_week_extension_url);
  }

  Future<Response> getUpcomingMovies() async {
    return await _api.get(top_movies_this_week_extension_url);
  }

  //TO DO : Search işlemi yapacaksın burada sürekli istek atmak yerine girdi alma işlemi bittikten sonra get isteği at.
  //Aslında bu durumu da bir bloc veya cubit yapısıyla kontrol etmek daha doğru sanırım. WritingState, DoneState gibi done olunca request atarsın. Writing ise loading indicator gösterirsin. 
  // Future<Response> searchMovie({required String word}) async {
  //   return await _api.get();
  // }
}
