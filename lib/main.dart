import 'package:flutter/material.dart';
import 'package:flutter_moviedb/common/app/theme/app_theme.dart';
import 'package:flutter_moviedb/common/app/router/routes/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MovieDBExample",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: AppTheme.fromBrightness(brightness: Brightness.dark),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: initialRoute,
      routes: routes,
    );
  }
}
