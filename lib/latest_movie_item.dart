import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:moviez_app/detail_movie_page.dart';

import 'movie.dart';
import 'navigation.dart';

Widget latestMovieItem(Movie latestMovie) {
  return GestureDetector(
    onTap: () {
      Navigation.intentWithData(DetailMoviePage.routeName, latestMovie);
    },
    child: Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16, 10, 16, 0),
      child: SizedBox(
        width: 270,
        height: 232,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.network(
                latestMovie.imagePath,
                width: 278,
                height: 172,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          latestMovie.name,
                          style: const TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 4, 0),
                                child: Container(
                                  width: 58,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFB2EBF2),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Text(
                                        latestMovie.genre1,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontFamily: 'Roboto',
                                          color: Color(0xFF3BACD6),
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 58,
                                height: 20,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFB2EBF2),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text(
                                      latestMovie.genre2,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontFamily: 'Roboto',
                                        color: Color(0xFF3BACD6),
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  RatingBar.builder(
                    onRatingUpdate: (newValue) => {},
                    itemBuilder: (context, index) => const Icon(
                      Icons.star_rounded,
                      color: Color(0xFFF6AC33),
                    ),
                    direction: Axis.horizontal,
                    initialRating: latestMovie.rating,
                    unratedColor: const Color(0xFF9E9E9E),
                    itemCount: 5,
                    itemSize: 20,
                    glowColor: const Color(0xFFF6AC33),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ),
  );
}
