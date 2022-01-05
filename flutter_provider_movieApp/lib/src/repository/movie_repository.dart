import 'dart:convert';
import 'package:flutter_provider/src/model/movie.dart';
import 'package:http/http.dart' as http;

class MovieRepository {
  // api서버 호출 -> 값 받아오기
  // http통신
  Future<List<Movie>> loadMovies() async {
    var queryParameters = {'api_key': 'e23f2c5a356111860c9d95261669df60'};
    var uri =
        Uri.https('api.themoviedb.org', '/3/movie/popular', queryParameters);
    var response = await http.get(uri);
    if (response.body != null) {
      Map<String, dynamic> body = json.decode(response.body);
      if (body['results'] != null) {
        List<dynamic> list = body['results'];
        return list.map<Movie>((item) => Movie.fromJson(item)).toList();
      }
    }
  }
}
