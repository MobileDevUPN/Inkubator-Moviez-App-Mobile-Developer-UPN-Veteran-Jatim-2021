import 'package:flutter/material.dart';
import 'package:moviez_app/detail_movie_page.dart';
import 'package:moviez_app/movie.dart';

import 'home_page.dart';
import 'navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moviez App',
      navigatorKey: navigatorKey,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => HomePage(),
        DetailMoviePage.routeName: (context) => DetailMoviePage(
              movie: ModalRoute.of(context)!.settings.arguments as Movie,
            ),
      },
    );
  }
}
