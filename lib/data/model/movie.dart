class Movie {
    bool adult;
    String backdropPath;
    int id;
    String title;
    OriginalLanguage? originalLanguage;
    String originalTitle;
    String overview;
    String posterPath;
    MediaType mediaType;
    List<int> genreIds;
    double popularity;
    DateTime releaseDate;
    bool video;
    double voteAverage;
    int voteCount;

    Movie({
        required this.adult,
        required this.backdropPath,
        required this.id,
        required this.title,
        required this.originalLanguage,
        required this.originalTitle,
        required this.overview,
        required this.posterPath,
        required this.mediaType,
        required this.genreIds,
        required this.popularity,
        required this.releaseDate,
        required this.video,
        required this.voteAverage,
        required this.voteCount,
    });

    factory Movie.fromJson(Map<String, dynamic> json) => Movie(
        adult: json["adult"],
        backdropPath: json["backdrop_path"],
        id: json["id"],
        title: json["title"],
        originalLanguage: originalLanguageValues.map[json["original_language"]],
        originalTitle: json["original_title"],
        overview: json["overview"],
        posterPath: json["poster_path"],
        mediaType: mediaTypeValues.map[json["media_type"]]!,
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        popularity: json["popularity"]?.toDouble(),
        releaseDate: DateTime.parse(json["release_date"]),
        video: json["video"],
        voteAverage: json["vote_average"]?.toDouble(),
        voteCount: json["vote_count"],
    );

    Map<String, dynamic> toJson() => {
        "adult": adult,
        "backdrop_path": backdropPath,
        "id": id,
        "title": title,
        "original_language": originalLanguageValues.reverse[originalLanguage],
        "original_title": originalTitle,
        "overview": overview,
        "poster_path": posterPath,
        "media_type": mediaTypeValues.reverse[mediaType],
        "genre_ids": List<dynamic>.from(genreIds.map((x) => x)),
        "popularity": popularity,
        "release_date": "${releaseDate.year.toString().padLeft(4, '0')}-${releaseDate.month.toString().padLeft(2, '0')}-${releaseDate.day.toString().padLeft(2, '0')}",
        "video": video,
        "vote_average": voteAverage,
        "vote_count": voteCount,
    };
}

enum MediaType {
    MOVIE
}

final mediaTypeValues = EnumValues({
    "movie": MediaType.MOVIE
});

enum OriginalLanguage {
    EN,
    PL,
    TR
}

final originalLanguageValues = EnumValues({
    "en": OriginalLanguage.EN,
    "pl": OriginalLanguage.PL,
    "tr": OriginalLanguage.TR
});

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        reverseMap = map.map((k, v) => MapEntry(v, k));
        return reverseMap;
    }
}