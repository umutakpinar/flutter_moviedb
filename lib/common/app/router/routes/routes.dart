import 'package:flutter/material.dart';
import 'package:flutter_moviedb/common/app/view/app.dart';
import 'package:flutter_moviedb/features/home/view/home_screen.dart';
import 'package:flutter_moviedb/features/search/search_screen.dart';
import 'package:flutter_moviedb/features/watchlist/watchlist_screen.dart';

String initialRoute = "/";

Map<String, Widget Function(BuildContext)> routes = {
  '/': (context) => const App(),
  // '/search': (p0) => const SearchScreen(), 
  // '/watchlist' : (context) => const WatchListScreen(),
};


final List<Widget> bottomNavbarRoutes = [
  const HomeScreen(),
  const SearchScreen(),
  const WatchListScreen()
];