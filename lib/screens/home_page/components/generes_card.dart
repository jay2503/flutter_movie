import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';

class GenresCard extends StatelessWidget {
  const GenresCard({
    Key key,
    this.genre,
  }) : super(key: key);

  final String genre;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: kDefaultPadding / 2),
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 4),
      child: Text(
        genre,
        style: TextStyle(fontSize: 16, color: kTextColor.withOpacity(0.8)),
      ),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black26),
          borderRadius: BorderRadius.circular(20)),
    );
  }
}
