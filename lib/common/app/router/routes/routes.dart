import 'package:flutter/material.dart';
import 'package:flutter_moviedb/features/home/view/home_screen.dart';
import 'package:flutter_moviedb/features/search/search_screen.dart';
import 'package:flutter_moviedb/features/watchlist/watchlist_screen.dart';

String initialRoute = "/";

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => const HomeScreen(),
  '/search': (p0) => const SearchScreen(), 
  '/watchlist' : (context) => const WatchListScreen(),
};
