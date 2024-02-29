const base_url = 'https://api.themoviedb.org/3/';
const headers = {
          'accept' : 'application/json',
          'Authorization' : 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJiODBhMjkxOTdlZmJlMjhkNWNmYjJiZGVkNTU4YzI2MCIsInN1YiI6IjY1ZGRmMTE2M2ZmMmRmMDE2NDBhYWUwOCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.omEKC619gF56Xg-Fhah0QWk7-NerwfRnEhoSjAXrcDo',
        };
const top_movies_this_week_extension_url = "trending/movie/week?language=en-US";
const popular_movies_extension_url = "movie/popular?language=en-US&page=1";
const now_playing_movies_extension_url = "movie/now_playing?language=en-US&page=1";
const top_rated_movies_extension_url = "movie/top_rated?language=en-US&page=1";
const upcoming_movies_extension_url = "movie/upcoming?language=en-US&page=1";

//TO DO : burada gelen kelimeyi query olarak eklememem gerekli
//const search_movie_extension_url = "";