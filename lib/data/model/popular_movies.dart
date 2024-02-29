// To parse this JSON data, do
//
//     final popularMovies = popularMoviesFromJson(jsonString);

import 'dart:convert';

import 'package:flutter_moviedb/data/model/movie.dart';

PopularMovies popularMoviesFromJson(String str) => PopularMovies.fromJson(json.decode(str));

String popularMoviesToJson(PopularMovies data) => json.encode(data.toJson());

class PopularMovies {
    int page;
    List<Movie> results;
    int totalPages;
    int totalResults;

    PopularMovies({
        required this.page,
        required this.results,
        required this.totalPages,
        required this.totalResults,
    });

    factory PopularMovies.fromJson(Map<String, dynamic> json) => PopularMovies(
        page: json["page"],
        results: List<Movie>.from(json["results"].map((x) => Movie.fromJson(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
    );

    Map<String, dynamic> toJson() => {
        "page": page,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "total_pages": totalPages,
        "total_results": totalResults,
    };
}