import 'package:flutter/material.dart';
import 'package:flutter_provider/src/model/movie.dart';
import 'package:flutter_provider/src/repository/movie_repository.dart';

class MovieProvider extends ChangeNotifier {
  MovieRepository _movieRepository = MovieRepository();
  List<Movie> _movies = [];

  List<Movie> get movies => _movies;
  // repository 접근
  loadMovies() async {
    // listMovies 예외 처리
    // 추가적인 가공절차
    List<Movie> listMovies = await _movieRepository.loadMovies();
    _movies = listMovies;
    notifyListeners();
  }
}
