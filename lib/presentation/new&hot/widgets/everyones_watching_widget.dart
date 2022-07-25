import 'package:flutter/material.dart';

import 'package:netflix_bloc/presentation/new&hot/widgets/individual_everyones_watching_widget.dart';

class EveryonesWatchingWidget extends StatelessWidget {
  const EveryonesWatchingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const IndividualEveryonesWatching();
        },
      ),
    );
  }
}
