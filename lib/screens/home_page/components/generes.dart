import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/screens/home_page/components/generes_card.dart';

class Genres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding / 2,
      ),
      padding: EdgeInsets.only(left: kDefaultPadding / 2),
      height: 36,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kGenres.length,
          itemBuilder: (context, index) => GenresCard(genre: kGenres[index])),
    );
  }
}
