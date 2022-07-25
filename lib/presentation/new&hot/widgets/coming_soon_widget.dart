import 'package:flutter/material.dart';

import 'package:netflix_bloc/presentation/new&hot/widgets/individual_comingsoon_widget.dart';


class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: ((context, index) {
        return const IndividualComingSoonWidget();
      }),
    );
  }
}
