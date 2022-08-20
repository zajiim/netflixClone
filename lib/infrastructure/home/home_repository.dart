// import 'package:dio/dio.dart';
// import 'package:injectable/injectable.dart';
// import 'package:netflix_bloc/domain/core/api_endpoints.dart';
// import 'package:netflix_bloc/domain/home/models/all_time_popular/all_time_popular.dart';
// import 'package:netflix_bloc/domain/home/models/home_trendings/home_trendings.dart';
// import 'package:netflix_bloc/core/failures/main_failures.dart';
// import 'package:dartz/dartz.dart';
// import 'package:netflix_bloc/domain/home/models/home_trendings/home_trendings_service.dart';
// import 'package:netflix_bloc/domain/home/models/popular_people/popular_people.dart';

// @LazySingleton(as: HomeTrendingService)
// class HomeRepository implements HomeTrendingService {
//   @override
//   Future<Either<MainFailures, HomeTrending>> getTrending() async {
//     try {
//       final response =
//           await Dio(BaseOptions()).get(ApiEndPoints.trendingMovies);
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         final trendingMoviesResult = HomeTrending.fromJson(response.data);
//         return Right(trendingMoviesResult);
//       } else {
//         return const Left(MainFailures.serverFailures());
//       }
//     } catch (_) {
//       return const Left(MainFailures.clientFailures());
//     }
//   }

//   @override
//   Future<Either<MainFailures, AllTimePopular>> getAllTimePopular() async {
//     try {
//       final response =
//           await Dio(BaseOptions()).get(ApiEndPoints.allTimePopular);
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         final allTimePopularResult = AllTimePopular.fromJson(response.data);
//         return Right(allTimePopularResult);
//       } else {
//         return const Left(MainFailures.serverFailures());
//       }
//     } catch (_) {
//       return const Left(MainFailures.clientFailures());
//     }
//   }

//   @override
//   Future<Either<MainFailures, PopularPeople>> getPopularPeople() async {
//     try {
//       final response = await Dio(BaseOptions()).get(ApiEndPoints.popularPeople);
//       if (response.statusCode == 200 || response.statusCode == 201) {
//         final popularPeopleResult = PopularPeople.fromJson(response.data);
//         return Right(popularPeopleResult);
//       } else {
//         return const Left(MainFailures.serverFailures());
//       }
//     } catch (_) {
//       return const Left(MainFailures.clientFailures());
//     }
//   }
// }

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_bloc/core/failures/main_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_bloc/domain/core/api_endpoints.dart';
import 'package:netflix_bloc/domain/home/home_service.dart';
import 'package:netflix_bloc/domain/home/models/home.dart';

@LazySingleton(as: HomeService)
class HomeRepository implements HomeService {
  @override
  Future<Either<MainFailures, HomeScreenData>> getNowPlayingMovies() async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.nowPlayingMovies);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final nowPlayingMoviesResult = HomeScreenData.fromJson(response.data);
        return Right(nowPlayingMoviesResult);
      } else {
        return const Left(MainFailures.serverFailures());
      }
    } catch (_) {
      return const Left(MainFailures.clientFailures());
    }
  }

  @override
  Future<Either<MainFailures, HomeScreenData>> getPopularMovies() async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.allTimePopular);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final allTimePopularResult = HomeScreenData.fromJson(response.data);
        return Right(allTimePopularResult);
      } else {
        return const Left(MainFailures.serverFailures());
      }
    } catch (_) {
      return const Left(MainFailures.clientFailures());
    }
  }

  @override
  Future<Either<MainFailures, HomeScreenData>> getUpcomingMovies() async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.upcomingMovies);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final upcomingMoviesResult = HomeScreenData.fromJson(response.data);
        return Right(upcomingMoviesResult);
      } else {
        return const Left(MainFailures.serverFailures());
      }
    } catch (_) {
      return const Left(MainFailures.clientFailures());
    }
  }

  @override
  Future<Either<MainFailures, HomeScreenData>> getTopRatedMovies() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.popularMovies);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final popularMoviesResult = HomeScreenData.fromJson(response.data);
        return Right(popularMoviesResult);
      } else {
        return const Left(MainFailures.serverFailures());
      }
    } catch (_) {
      return const Left(MainFailures.clientFailures());
    }
  }

  @override
  Future<Either<MainFailures, HomeScreenData>> getTopRatedShows() async {
    try {
      final response =
          await Dio(BaseOptions()).get(ApiEndPoints.popularTvShows);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final popularTvShowsResult = HomeScreenData.fromJson(response.data);
        return Right(popularTvShowsResult);
      } else {
        return const Left(MainFailures.serverFailures());
      }
    } catch (_) {
      return const Left(MainFailures.clientFailures());
    }
  }

  @override
  Future<Either<MainFailures, HomeScreenData>> getPopularPeople() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.popularPeople);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final popularPeopleResult = HomeScreenData.fromJson(response.data);
        log(popularPeopleResult.toString());
        return Right(popularPeopleResult);
      } else {
        return const Left(MainFailures.serverFailures());
      }
    } catch (_) {
      return const Left(MainFailures.clientFailures());
    }
  }
}
