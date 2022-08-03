import 'package:dartz/dartz.dart';
import 'package:netflix_bloc/core/failures/main_failures.dart';
import 'package:netflix_bloc/domain/search/models/search.dart';

abstract class SearchService {
  Future<Either<MainFailures, Search>> searchTvShows({
    required String tvShowQuery,
  });
}
