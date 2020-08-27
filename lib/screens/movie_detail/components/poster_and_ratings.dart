import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/screens/movie_detail/components/poster_and_ratings/backdrop.dart';
import 'package:movie_app/screens/movie_detail/components/poster_and_ratings/ratings.dart';

class PosterAndRatings extends StatelessWidget {
  const PosterAndRatings({
    Key key,
    @required this.size,
    @required this.movie,
  }) : super(key: key);

  final Size size;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      child: Stack(
        children: [
          BackDropPoster(movie: movie),
          SafeArea(child: BackButton()),
          Ratings(
            size: size,
            movie: movie,
          )
        ],
      ),
    );
  }
}
