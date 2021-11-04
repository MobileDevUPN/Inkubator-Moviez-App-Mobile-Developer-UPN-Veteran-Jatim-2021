import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:moviez_app/movie.dart';

import 'detail_movie_page.dart';
import 'navigation.dart';

Widget popularMovieItem(BuildContext context, Movie popularMovie) {
  return GestureDetector(
    onTap: () {
      Navigation.intentWithData(DetailMoviePage.routeName, popularMovie);
    },
    child: Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16, 10, 16, 16),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 130,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.network(
                popularMovie.imagePath,
                width: 120,
                height: MediaQuery.of(context).size.height * 1,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      popularMovie.name,
                      style: const TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0, 8, 0, 16),
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
                                children: [
                                  Text(
                                    popularMovie.genre1,
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
                              children: [
                                Text(
                                  popularMovie.genre2,
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
                    ),
                    RatingBar.builder(
                      onRatingUpdate: (newValue) => {},
                      itemBuilder: (context, index) => const Icon(
                        Icons.star_rounded,
                        color: Color(0xFFF6AC33),
                      ),
                      direction: Axis.horizontal,
                      initialRating: popularMovie.rating,
                      unratedColor: const Color(0xFF9E9E9E),
                      itemCount: 5,
                      itemSize: 20,
                      glowColor: const Color(0xFFF6AC33),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
