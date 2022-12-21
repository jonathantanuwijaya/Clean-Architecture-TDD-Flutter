import 'package:flutter/material.dart';
import 'package:movieapp/feature/domain/movie/movies.dart';
import 'package:movieapp/feature/presentation/widget/buyticket_button.dart';
import 'package:movieapp/feature/presentation/widget/categories_card.dart';
import 'package:movieapp/feature/presentation/widget/detail_page_header.dart';
import 'package:movieapp/feature/presentation/widget/detail_page_poster.dart';

class MovieDetailPage extends StatelessWidget {
  final Movie movie;
  const MovieDetailPage({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.height / 24),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const DetailPageHeader(),
                const SizedBox(
                  height: 30,
                ),
                DetailPagePoster(urlPic: movie.artworkUrl100),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      movie.artistName,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 22,
                        ),
                        Text('25k',
                            style: TextStyle(color: Colors.white, fontSize: 14))
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 40,
                  child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CategoriesCard(
                          height: 15,
                          width: 70,
                          text: "Horror",
                        ),
                        CategoriesCard(
                          height: 15,
                          width: 70,
                          text: "Romance",
                        ),
                        CategoriesCard(
                          height: 15,
                          width: 70,
                          text: "Comedy",
                        ),
                        CategoriesCard(
                          height: 15,
                          width: 70,
                          text: "Action",
                        ),
                      ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Synopsis ${movie.artistName}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 17),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  movie.longDescription,
                  maxLines: 4,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
                const SizedBox(
                  height: 10,
                ),
                BuyTicket()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
