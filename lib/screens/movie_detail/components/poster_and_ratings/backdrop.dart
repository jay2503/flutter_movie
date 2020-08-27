import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';

class BackDropPoster extends StatelessWidget {
  const BackDropPoster({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "pic_${movie.id}",
      child: Container(
        padding: EdgeInsets.only(bottom: 50),
        child: Container(
            decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(30)),
                image: DecorationImage(
                    image: AssetImage(movie.backdrop), fit: BoxFit.fitWidth))),
      ),
    );
  }
}
