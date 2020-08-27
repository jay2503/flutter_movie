import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/screens/movie_detail/components/movie_crew.dart';
import 'package:movie_app/screens/movie_detail/components/movie_meta.dart';
import 'package:movie_app/screens/movie_detail/components/poster_and_ratings.dart';

class Body extends StatelessWidget {
  final Movie movie;

  const Body({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        PosterAndRatings(size: size, movie: movie),
        MovieMeta(movie: movie),
        MovieCrew(movie: movie)
      ],
    );
  }
}
