import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/models/movie.dart';

class MovieCrew extends StatelessWidget {
  const MovieCrew({
    Key key,
    @required this.movie,
  }) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cast & Crew",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          SizedBox(
            height: 130,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: movie.crews.length,
                itemBuilder: (context, index) => Container(
                      margin: EdgeInsets.only(right: kDefaultPadding / 2),
                      width: 100,
                      child: Column(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.amberAccent,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(movie.crews[index].image),
                                    fit: BoxFit.fitWidth)),
                          ),
                          SizedBox(height: kDefaultPadding / 2),
                          Text(
                            movie.crews[index].name,
                            style: TextStyle(fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
