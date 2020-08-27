import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/models/movie.dart';

class Ratings extends StatelessWidget {
  const Ratings({
    Key key,
    @required this.size,
    @required this.movie,
  }) : super(key: key);

  final Size size;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        height: 100,
        width: size.width * 0.90,
        decoration: BoxDecoration(
            boxShadow: [kDefaultShadow],
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50), topLeft: Radius.circular(50))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.solidStar,
                  color: kFillStarColor,
                  size: 20,
                ),
                SizedBox(height: kDefaultPadding / 4),
                RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                      TextSpan(
                          text: "${movie.stars}/",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16)),
                      TextSpan(text: "10")
                    ]))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.star,
                  color: kFillStarColor,
                  size: 20,
                ),
                SizedBox(height: kDefaultPadding / 4),
                RichText(
                    text: TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [TextSpan(text: "Rate this")]))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: kDefaultPadding / 6,
                      horizontal: kDefaultPadding / 4),
                  decoration: BoxDecoration(
                      color: kFillStarColor, border: Border.all()),
                  child: Text("76",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600)),
                ),
                SizedBox(height: kDefaultPadding / 4),
                Text("Metascore")
              ],
            )
          ],
        ),
      ),
    );
  }
}
