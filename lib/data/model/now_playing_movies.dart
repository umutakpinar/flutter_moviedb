// To parse this JSON data, do
//
//     final nowPlayingMovies = nowPlayingMoviesFromJson(jsonString);

import 'dart:convert';

import 'package:flutter_moviedb/data/model/movie.dart';

NowPlayingMovies nowPlayingMoviesFromJson(String str) => NowPlayingMovies.fromJson(json.decode(str));

String nowPlayingMoviesToJson(NowPlayingMovies data) => json.encode(data.toJson());

class NowPlayingMovies {
    Dates dates;
    int page;
    List<Movie> results;
    int totalPages;
    int totalResults;

    NowPlayingMovies({
        required this.dates,
        required this.page,
        required this.results,
        required this.totalPages,
        required this.totalResults,
    });

    factory NowPlayingMovies.fromJson(Map<String, dynamic> json) => NowPlayingMovies(
        dates: Dates.fromJson(json["dates"]),
        page: json["page"],
        results: List<Movie>.from(json["results"].map((x) => Movie.fromJson(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
    );

    Map<String, dynamic> toJson() => {
        "dates": dates.toJson(),
        "page": page,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
        "total_pages": totalPages,
        "total_results": totalResults,
    };
}

class Dates {
    DateTime maximum;
    DateTime minimum;

    Dates({
        required this.maximum,
        required this.minimum,
    });

    factory Dates.fromJson(Map<String, dynamic> json) => Dates(
        maximum: DateTime.parse(json["maximum"]),
        minimum: DateTime.parse(json["minimum"]),
    );

    Map<String, dynamic> toJson() => {
        "maximum": "${maximum.year.toString().padLeft(4, '0')}-${maximum.month.toString().padLeft(2, '0')}-${maximum.day.toString().padLeft(2, '0')}",
        "minimum": "${minimum.year.toString().padLeft(4, '0')}-${minimum.month.toString().padLeft(2, '0')}-${minimum.day.toString().padLeft(2, '0')}",
    };
}