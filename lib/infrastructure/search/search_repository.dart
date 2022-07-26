

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_bloc/domain/core/api_endpoints.dart';
import 'package:netflix_bloc/domain/search/models/search.dart';
import 'package:netflix_bloc/core/failures/main_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_bloc/domain/search/search_service.dart';

@LazySingleton(as: SearchService)
class SearchRepository implements SearchService {
  @override
  Future<Either<MainFailures, Search>> searchTvShows(
      {required String tvShowQuery}) async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.search, queryParameters: {
        'query': tvShowQuery,
      });
    
      if (response.statusCode == 200 || response.statusCode == 201) {
        final searchResult = Search.fromJson(response.data);
      

        return Right(searchResult);
      } else {
        return const Left(MainFailures.serverFailures());
      }
    } on DioError catch (e) {
    
      return const Left(MainFailures.clientFailures());
    } catch (e) {
  
      return const Left(MainFailures.clientFailures());
    }
  }
}
