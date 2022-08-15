import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:netflix_bloc/core/constants/strings.dart';

import 'package:netflix_bloc/presentation/new&hot/widgets/individual_comingsoon_widget.dart';

import '../../../application/new_and_hot/new_and_hot_bloc.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewAndHotBloc, NewAndHotState>(
      builder: (context, state) {
        if (state.isError) {
          return const Center(
            child: Text('Error occured'),
          );
        } else if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(
              strokeWidth: 6,
            ),
          );
        } else if (state.comingSoonList.isEmpty) {
          return const Center(
            child: Text('List is empty'),
          );
        } else {
          return ListView.builder(
            itemBuilder: ((context, index) {
              final tvShow = state.comingSoonList[index];
              String month = '';
              String date = '';
              try {
                var date = DateTime.tryParse(tvShow.firstAirDate!);
                final formattedDate = DateFormat.yMMMMd('en_US').format(date!);
                month = formattedDate
                    .split(' ')
                    .first
                    .substring(0, 3)
                    .toUpperCase();
                date = tvShow.firstAirDate!.split('-')[1] as DateTime?;
              } catch (_) {
                month = '';
                date = '';
              }

              return IndividualComingSoonWidget(
                id: tvShow.id.toString(),
                imgUrl: (tvShow.posterPath != null)
                    ? '$imageAppendUrl${tvShow.backdropPath}'
                    : '$imageAppendUrl${tvShow.posterPath}',
                overview: tvShow.overview ?? 'No description available',
                showName: tvShow.name ?? tvShow.originalName,
                month: month,
                date: date,
              );
            }),
            itemCount: state.comingSoonList.length,
          );
        }
      },
    );
  }
}
