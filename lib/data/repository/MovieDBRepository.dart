import 'package:flutter_moviedb/data/service/api/moviedb.dart';

//  TO DO : BU ALANDA DATAYI LOCAL OLARAK KAYDEDİP, VERİLERİ DE BURADAN ÇEKECEĞİM.
// Not : SharedPreferences büyük dosyaları kaydetmiyor kendi model classıma izinv ermyebilir bu durumda SQLite.

class MovieDBRepository {
  final MovieDBAPI _api = MovieDBAPI();
  
  
}