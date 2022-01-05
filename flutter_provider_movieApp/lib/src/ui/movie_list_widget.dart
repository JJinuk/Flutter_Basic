import 'package:flutter/material.dart';
import 'package:flutter_provider/src/model/movie.dart';
import 'package:flutter_provider/src/provider/movie_provider.dart';
import 'package:provider/provider.dart';

class MovieListWidget extends StatelessWidget {
  MovieListWidget({Key? key}) : super(key: key);
  Widget _makeListView(List<Movie> movies) {
    return ListView.separated(
      itemCount: movies.length,
      itemBuilder: (BuildContext context, int index) {
        return Center(
          child: Text(movies[index].title),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return Divider();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    MovieProvider _movieProvider =
        Provider.of<MovieProvider>(context, listen: false);
    _movieProvider.loadMovies;
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie Provider"),
      ),
      body: Consumer<MovieProvider>(
        builder: (context, provider, widget) {
        if (provider.movies != null && provider.movies.length > 0) {
          return _makeListView(provider.movies);
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      }),
    );
  }
}
