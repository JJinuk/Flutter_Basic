import 'package:flutter/material.dart';
import 'package:flutter_provider/src/provider/movie_provider.dart';
import 'package:provider/provider.dart';

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie Provider"),
      ),
      body: Consumer<MovieProvider>(builder: (context, provider, widget) {
        if (provider.movies != null && provider.movies.length > 0) {}
        return Center(
          child: CircularProgressIndicator(),
        );
      }),
    );
  }
}
