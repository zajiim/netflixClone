import 'package:dartz/dartz.dart';
import 'package:netflix_bloc/core/failures/main_failures.dart';

import 'models/home.dart';

abstract class HomeService {
  Future<Either<MainFailures, HomeScreenData>> getPopularMovies();
  Future<Either<MainFailures, HomeScreenData>> getUpcomingMovies();
  Future<Either<MainFailures, HomeScreenData>> getNowPlayingMovies();
  Future<Either<MainFailures, HomeScreenData>> getTopRatedMovies();
  Future<Either<MainFailures, HomeScreenData>> getTopRatedShows();

}
