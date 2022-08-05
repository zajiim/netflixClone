import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_bloc/core/failures/main_failures.dart';
import 'package:dartz/dartz.dart';
import 'package:netflix_bloc/domain/core/api_endpoints.dart';

import 'package:netflix_bloc/domain/downloads/downloads_service.dart';
import 'package:netflix_bloc/domain/downloads/models/downloads.dart';

@LazySingleton(as: DownloadsService)
class DownloadsRepostory implements DownloadsService {
  @override
  Future<Either<MainFailures, List<Downloads>>> getDownloadsImages() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.downloads);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadsList = (response.data['results'] as List).map((items) {
          return Downloads.fromJson(items);
        }).toList();
        print(downloadsList.toString());
        return Right(downloadsList);
      } else {
        return const Left(MainFailures.serverFailures());
      }
    } catch (_) {
      return const Left(MainFailures.clientFailures());
    }
  }
}
