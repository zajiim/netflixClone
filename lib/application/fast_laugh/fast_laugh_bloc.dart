import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/downloads/downloads_service.dart';
import '../../domain/downloads/models/downloads.dart';

part 'fast_laugh_event.dart';
part 'fast_laugh_state.dart';
part 'fast_laugh_bloc.freezed.dart';

final videoUrls = [
  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WeAreGoingOnBullrun.mp4',
  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4',
  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4',
  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4',
  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4',
  'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/WhatCarCanYouGetForAGrand.mp4',
];

@injectable
class FastLaughBloc extends Bloc<FastLaughEvent, FastLaughState> {
  FastLaughBloc(
    final DownloadsService _downloadService,
  ) : super(FastLaughState.initial()) {
    on<Initialize>((event, emit) async {
      //loading state
      emit(const FastLaughState(
        videosList: [],
        isLoading: true,
        isError: false,
      ));
      //get trending

      final videoListResult = await _downloadService.getDownloadsImages();
      emit(videoListResult.fold(
          (failure) => const FastLaughState(
                videosList: [],
                isLoading: false,
                isError: true,
              ),
          (success) => FastLaughState(
                videosList: success,
                isLoading: false,
                isError: false,
              )));
    });
  }
}
