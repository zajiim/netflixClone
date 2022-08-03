import 'package:dartz/dartz.dart';
import 'package:netflix_bloc/core/failures/main_failures.dart';
import 'package:netflix_bloc/domain/downloads/models/downloads.dart';

abstract class DownloadsService {
  Future<Either<MainFailures, List<Downloads>>> getDownloadsImages();
}
