import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movieapp/feature/application/search/search_bloc.dart';
import 'package:movieapp/feature/presentation/search/search_detail_page.dart';
import 'package:movieapp/feature/presentation/widget/detail_page_header.dart';
import 'package:movieapp/feature/presentation/widget/movie_poster.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) => (!state.isLoading)
          ? const Center(child: CircularProgressIndicator())
          : (state.listOfMovies.isEmpty)
              ? Scaffold(
                  backgroundColor: Colors.blueGrey[900],
                  body: const Center(
                      child: Text(
                    'Film tidak ditemukan',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )),
                )
              : Scaffold(
                  backgroundColor: Colors.blueGrey[900],
                  body: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 15),
                          padding: const EdgeInsets.all(12.0),
                          child: DetailPageHeader(),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SizedBox(
                            child: ListView.builder(
                                physics: ScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: state.listOfMovies.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (BuildContext context) =>
                                                  SearchMovieDetailPage(
                                                      movie: state
                                                          .listOfMovies[index]
                                                          )));
                                    },
                                    child: Column(
                                      children: [
                                        Container(
                                            margin: const EdgeInsets.symmetric( vertical: 2,
                                                 horizontal: 10),
                                            child: MoviePoster( height: 180, width: 300,
                                                url: state.listOfMovies[index]
                                                    .artworkUrl100)),
                                        Text('Actor : ${state.listOfMovies[index].artistName}'),
                                        SizedBox(height: 15,)

                                      ],
                                    ),
                                  );
                                }),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
    );
  }
}
