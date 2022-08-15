import 'package:netflix_bloc/core/constants/strings.dart';
import 'package:netflix_bloc/core/constants/credentials.dart';

class ApiEndPoints {
  static const downloads = '$baseUrl/trending/all/day?api_key=$apiKey';
  static const search = '$baseUrl/search/tv?api_key=$apiKey';
  static const newAndHotTvShows = '$baseUrl/discover/tv?api_key=$apiKey';
  static const newAndHotMovies = '$baseUrl/discover/movie?api_key=$apiKey';
}
