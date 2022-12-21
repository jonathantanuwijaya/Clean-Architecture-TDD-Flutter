import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/feature/application/movie/movie_bloc.dart';
import 'package:movieapp/feature/application/search/search_bloc.dart';
import 'package:movieapp/feature/domain/movie/movies.dart';
import 'package:movieapp/feature/presentation/detail/detail_page.dart';
import 'package:movieapp/feature/presentation/search/search_page.dart';
import 'package:movieapp/feature/presentation/sign_in_page/sign_in_page.dart';
import 'package:movieapp/feature/presentation/widget/categories_card.dart';
import 'package:movieapp/feature/presentation/widget/detail_page_header.dart';
import 'package:movieapp/feature/presentation/widget/floating_bottom_nav.dart';
import 'package:movieapp/feature/presentation/widget/genre_list.dart';
import 'package:movieapp/feature/presentation/widget/home_header.dart';
import 'package:movieapp/feature/presentation/widget/movie_poster.dart';
import 'package:movieapp/feature/presentation/widget/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final searchMovie = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: BlocBuilder<MovieBloc, MovieState>(
          builder: (context, state) => state.map(
              initial: (_) => const Center(child: CircularProgressIndicator()),
              failed: (_) {
                return const Center(
                  child: Text('Terjadi Kesalahan'),
                );
              },
              success: (state) {
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 30),
                        child: HomeHeader()),
                      SearchBar(
                        controller: searchMovie,
                        submitting: () {
                          debugPrint('Search Movie == ${searchMovie.text}');
                          if (searchMovie.text.isNotEmpty) {
                            context
                                .read<SearchBloc>()
                                .add(SearchEvent.searchMovie(searchMovie.text));

                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SearchPage()));
                          }
                        },
                      ),
                      const SizedBox(height: 15),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Categories',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GenreList(),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Popular',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            Text(
                              'See All',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 250,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: state.movies.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            MovieDetailPage(
                                                movie: state.movies[index])));
                              },
                              child: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: MoviePoster(
                                  url: state.movies[index].artworkUrl100,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const FloatingBottomNav()
                    ],
                  ),
                );
              })),
    );
  }
}
