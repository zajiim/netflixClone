import 'package:dartz/dartz.dart';
import 'package:netflix_bloc/core/failures/main_failures.dart';

import 'models/new&hot.dart';

abstract class NewAndHotService {
  Future<Either<MainFailures, NewHot>> getHotAndNewShowData();
  Future<Either<MainFailures, NewHot>> getHotAndNewMovieData();
}
