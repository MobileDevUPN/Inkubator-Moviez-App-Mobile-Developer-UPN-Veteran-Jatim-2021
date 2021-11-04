import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:moviez_app/movie.dart';

class DetailMoviePage extends StatefulWidget {
  static const routeName = "/detail_movie_page";

  final Movie movie;

  // ignore: use_key_in_widget_constructors
  const DetailMoviePage({required this.movie});

  @override
  State<DetailMoviePage> createState() => _DetailMoviePageState();
}

class _DetailMoviePageState extends State<DetailMoviePage> {
  @override
  Widget build(BuildContext context) {
    var data = widget.movie;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                data.imagePath,
                width: MediaQuery.of(context).size.width,
                height: 250,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                child: Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          data.name,
                          style: const TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0, 10, 0, 16),
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
                                        data.genre1,
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
                                      data.genre2,
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
                          initialRating: data.rating,
                          unratedColor: const Color(0xFF9E9E9E),
                          itemCount: 5,
                          itemSize: 24,
                          glowColor: const Color(0xFFF6AC33),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 16, top: 16),
                child: Text(
                  "Description",
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 16),
                child: Text(
                  data.description,
                  style: const TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
