import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/screens/home_page/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Home"),
        centerTitle: false,
        leading: IconButton(
            icon: FaIcon(
              FontAwesomeIcons.bars,
              color: kTextColor,
            ),
            onPressed: () {}),
        actions: [
          IconButton(
              icon: FaIcon(
                FontAwesomeIcons.search,
                color: kTextColor,
              ),
              onPressed: () {})
        ],
      ),
      body: Body(),
    );
  }
}
