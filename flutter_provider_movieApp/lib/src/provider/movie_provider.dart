import 'package:flutter/material.dart';
import 'package:flutter_provider/src/model/movie.dart';

class MovieProvider extends ChangeNotifier {
  List<Movie> _movies = [];
  List<Movie> get movies => _movies;
  loadMovies() {
    // repository 접근
  }
}
