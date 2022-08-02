import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_bloc/core/failures/main_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_bloc/domain/downloads/core/api_endpoints.dart';
import 'package:netflix_bloc/domain/downloads/downloads_repo.dart';
import 'package:netflix_bloc/domain/downloads/models/downloads.dart';

@LazySingleton(as: DownloadsRepo)
class DownloadsRepostory implements DownloadsRepo {
  @override
  Future<Either<MainFailures, List<Downloads>>> getDownloadsImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        List<Downloads> downloadsList = [];
        downloadsList = (response.data['results'] as List)
            .map((items) => Downloads.fromJson(items))
            .toList();
        

        return Right(downloadsList);
      } else {
        return const Left(MainFailures.serverFailures());
      }
    } catch (_) {
      return const Left(MainFailures.clientFailures());
    }
  }
}