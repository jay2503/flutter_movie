import 'package:flutter/material.dart';
import 'package:movie_app/screens/home_page/components/generes.dart';
import 'package:movie_app/screens/home_page/components/movie_filters.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [MovieFilters(), Genres()],
    );
  }
}
