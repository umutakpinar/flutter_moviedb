// To parse this JSON data, do
//
//     final topRatedMovies = topRatedMoviesFromJson(jsonString);

import 'dart:convert';

import 'package:flutter_moviedb/data/model/movie.dart';

TopRatedMovies topRatedMoviesFromJson(String str) => TopRatedMovies.fromJson(json.decode(str));

String topRatedMoviesToJson(TopRatedMovies data) => json.encode(data.toJson());

class TopRatedMovies {
    int page;
    List<Movie> results;
    int totalPages;
    int totalResults;

    TopRatedMovies({
        required this.page,
        required this.results,
        required this.totalPages,
        required this.totalResults,
    });

    factory TopRatedMovies.fromJson(Map<String, dynamic> json) => TopRatedMovies(
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