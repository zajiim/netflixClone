import 'package:netflix_bloc/core/constants/strings.dart';
import 'package:netflix_bloc/core/constants/credentials.dart';

class ApiEndPoints {
  static const downloads = '$baseUrl/trending/all/day?api_key=$apiKey';
  static const search = '$baseUrl/search/tv?api_key=$apiKey';
  static const newAndHotTvShows = '$baseUrl/discover/tv?api_key=$apiKey';
  static const newAndHotMovies = '$baseUrl/discover/movie?api_key=$apiKey';
  static const nowPlayingMovies = '$baseUrl/movie/now_playing?api_key=$apiKey';
  static const allTimePopular = '$baseUrl/movie/top_rated?api_key=$apiKey';
  static const upcomingMovies = '$baseUrl/movie/upcoming?api_key=$apiKey';
  static const popularMovies = '$baseUrl/3/movie/popular?api_key=$apiKey';
  static const popularPeople = '$baseUrl/person/popular?api_key=$apiKey';
  static const popularTvShows = '$baseUrl/tv/popular?api_key=$apiKey';
}
