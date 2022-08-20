

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_bloc/domain/core/api_endpoints.dart';
import 'package:netflix_bloc/domain/new&hot/models/new&hot.dart';
import 'package:netflix_bloc/core/failures/main_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_bloc/domain/new&hot/new_&_hot_service.dart';

@LazySingleton(as: NewAndHotService)
class NewAndHotRepository implements NewAndHotService {
  @override
  Future<Either<MainFailures, NewHot>> getHotAndNewShowData() async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.newAndHotTvShows);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final newHotTvShowsResult = NewHot.fromJson(response.data);
        return Right(newHotTvShowsResult);
      } else {
        return const Left(MainFailures.serverFailures());
      }
    } catch (e) {
      
      return const Left(MainFailures.clientFailures());
    }
  }

  @override
  Future<Either<MainFailures, NewHot>> getHotAndNewMovieData() async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.newAndHotMovies);
     
      if (response.statusCode == 200 || response.statusCode == 201) {
        final newHotMoviesResult = NewHot.fromJson(response.data);
        return Right(newHotMoviesResult);
      } else {
        return const Left(MainFailures.serverFailures());
      }
    } catch (e) {
     
      return const Left(MainFailures.clientFailures());
    }
  }
}
