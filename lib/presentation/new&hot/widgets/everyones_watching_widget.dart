import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_bloc/core/constants/strings.dart';

import 'package:netflix_bloc/presentation/new&hot/widgets/individual_everyones_watching_widget.dart';

import '../../../application/new_and_hot/new_and_hot_bloc.dart';
import '../../../core/colors/colors.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: BlocBuilder<NewAndHotBloc, NewAndHotState>(
        builder: (context, state) {
          if (state.isError) {
            return const Center(
              child: Text('Error occured'),
            );
          } else if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: kNetflixRed,
              ),
            );
          } else if (state.everyOnesWatchingList.isEmpty) {
            return const Center(
              child: Text('List is empty'),
            );
          } else {
            return ListView.builder(
              itemCount: state.everyOnesWatchingList.length,
              itemBuilder: (context, index) {
                final movieShows = state.everyOnesWatchingList[index];
                log(movieShows.toString());
                return IndividualEveryonesWatching(
                  movieName: movieShows.name ?? movieShows.originalTitle,
                  imgUrl: (movieShows.posterPath != null)
                      ? '$imageAppendUrl${movieShows.backdropPath}'
                      : '$imageAppendUrl${movieShows.posterPath}',
                  overview: movieShows.overview,
                );
              },
            );
          }
        },
      ),
    );
  }
}
