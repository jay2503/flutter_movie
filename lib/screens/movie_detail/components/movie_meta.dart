import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/screens/home_page/components/generes_card.dart';

class MovieMeta extends StatelessWidget {
  const MovieMeta({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.title,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                ),
                Row(
                  children: [
                    Text(
                      "2019",
                      style: TextStyle(color: kTextLightColor),
                    ),
                    Spacer(),
                    Text(
                      "PG-13",
                      style: TextStyle(color: kTextLightColor),
                    ),
                    Spacer(),
                    Text(
                      "2h 32m",
                      style: TextStyle(color: kTextLightColor),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                  ],
                )
              ],
            )),
            SizedBox(
              height: 50,
              width: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: kSecondaryColor,
                child: FaIcon(
                  FontAwesomeIcons.plus,
                  size: 20,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        Container(
          height: 36,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: movie.genres.length,
              itemBuilder: (context, index) {
                return GenresCard(
                  genre: movie.genres[index],
                );
              }),
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        Text(
          "About Movie",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
        ),
        SizedBox(
          height: kDefaultPadding / 2,
        ),
        Text(
          movie.about,
          style: TextStyle(color: kTextLightColor),
        )
      ]),
    );
  }
}
