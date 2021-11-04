import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:moviez_app/movie.dart';
import 'package:moviez_app/latest_movie_item.dart';
import 'package:moviez_app/popular_movie_item.dart';

class HomePage extends StatelessWidget {
  static const routeName = "/";

  final List<Movie> _latestMovieList = [
    Movie(
        name: "Free Guy",
        description:
            "A bank teller called Guy realizes he is a background character in an open world video game called Free City that will soon go offline.",
        imagePath:
            "http://image.tmdb.org/t/p/w500/8Y43POKjjKDGI9MH89NW0NAzzp8.jpg",
        genre1: "Action",
        genre2: "Comedy",
        rating: 4),
    Movie(
        name: "Dune",
        description:
            "Paul Atreides, a brilliant and gifted young man born into a great destiny beyond his understanding, must travel to the most dangerous planet in the universe to ensure the future of his family and his people. As malevolent forces explode into conflict over the planet's exclusive supply of the most precious resource in existence-a commodity capable of unlocking humanity's greatest potential-only those who can conquer their fear will survive.",
        imagePath:
            "http://image.tmdb.org/t/p/w500/Aebz7s8EHQXxHR98J8Vw6QVGggq.jpg",
        genre1: "Action",
        genre2: "Advanture",
        rating: 4),
    Movie(
        name: "Halloween Kills",
        description:
            "Minutes after Laurie Strode, her daughter Karen and granddaughter Allyson left masked monster Michael Myers caged and burning in Laurie's basement, Laurie is rushed to the hospital with life-threatening injuries, believing she finally killed her lifelong tormentor. But when Michael manages to free himself from Laurie's trap, his ritual bloodbath resumes. As Laurie fights her pain and prepares to defend herself against him, she inspires all of Haddonfield to rise up against their unstoppable monster. The Strode women join a group of other survivors of Michael's first rampage who decide to take matters into their own hands, forming a vigilante mob that sets out to hunt Michael down, once and for all.",
        imagePath:
            "http://image.tmdb.org/t/p/w500/tDYwYktjFmpj92S2Qn4T3BcRgL.jpg",
        genre1: "Horror",
        genre2: "Thriller",
        rating: 3.5),
  ];

  final List<Movie> _popularMovieList = [
    Movie(
        name: "Venom: Let There Be Carnage",
        description:
            "After finding a host body in investigative reporter Eddie Brock, the alien symbiote must face a new enemy, Carnage, the alter ego of serial killer Cletus Kasady.",
        imagePath:
            "http://image.tmdb.org/t/p/w500/rjkmN1dniUHVYAtwuV3Tji7FsDO.jpg",
        genre1: "Action",
        genre2: "Sci-Fi",
        rating: 3.5),
    Movie(
        name: "Snake Eyes: G.I. Joe Origins",
        description:
            "After saving the life of their heir apparent, tenacious loner Snake Eyes is welcomed into an ancient Japanese clan called the Arashikage where he is taught the ways of the ninja warrior. But, when secrets from his past are revealed, Snake Eyes' honor and allegiance will be tested – even if that means losing the trust of those closest to him.",
        imagePath:
            "http://image.tmdb.org/t/p/w500/uIXF0sQGXOxQhbaEaKOi2VYlIL0.jpg",
        genre1: "Action",
        genre2: "Advanture",
        rating: 3),
    Movie(
        name: "The Addams Family 2",
        description:
            "The Addams get tangled up in more wacky adventures and find themselves involved in hilarious run-ins with all sorts of unsuspecting characters.",
        imagePath:
            "http://image.tmdb.org/t/p/w500/ld7YB9vBRp1GM1DT3KmFWSmtBPB.jpg",
        genre1: "Animation",
        genre2: "Comedy",
        rating: 3.5),
  ];

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Text(
                        'Moviez',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Color(0xFF3BACD6),
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: CupertinoSearchTextField(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 8,
                        ),
                        placeholder: "Wactch Much Easier",
                        placeholderStyle: const TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF909090),
                        ),
                        style: const TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 12,
                        ),
                        itemSize: 16,
                        backgroundColor:
                            const Color(0xFF3BACD6).withOpacity(0.2),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 24, 0, 10),
                child: Text(
                  'Now Playing',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xFF333333),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 250.0,
                child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: _latestMovieList.length,
                    itemBuilder: (BuildContext context, int index) =>
                        latestMovieItem(_latestMovieList[index])),
              ),
              const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 24, 0, 10),
                child: Text(
                  'Top Rated',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    color: Color(0xFF333333),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Flexible(
                child: ListView.builder(
                    physics: const ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: _latestMovieList.length,
                    itemBuilder: (BuildContext context, int index) =>
                        popularMovieItem(context, _popularMovieList[index])),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
