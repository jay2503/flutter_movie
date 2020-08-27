import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';

class MovieFilters extends StatefulWidget {
  @override
  _MovieFiltersState createState() => _MovieFiltersState();
}

class _MovieFiltersState extends State<MovieFilters> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView.builder(
          itemCount: kMovieFilters.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: MovieFilter(
                  filter: kMovieFilters[index],
                  isSelected: index == selectedIndex ? true : false,
                ),
              )),
    );
  }
}

class MovieFilter extends StatelessWidget {
  const MovieFilter({
    Key key,
    this.filter,
    this.isSelected,
  }) : super(key: key);

  final String filter;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            filter,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: isSelected ? kTextColor : kTextLightColor),
          ),
          Container(
            margin: EdgeInsets.only(top: kDefaultPadding / 2),
            height: 3,
            width: kDefaultPadding,
            decoration: BoxDecoration(
                color: isSelected ? kSecondaryColor : Colors.transparent),
          )
        ],
      ),
    );
  }
}
