import 'package:flutter/material.dart';

import 'categories_card.dart';

class GenreList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: const [
            CategoriesCard(
              text: "Horror",
              color: Colors.deepPurpleAccent,
            ),
            CategoriesCard(
              text: "Romance",
            ),
            CategoriesCard(
              text: "Comedy",
            ),
            CategoriesCard(
              text: "Action",
            ),
          ]),
    );
    ;
  }
}
