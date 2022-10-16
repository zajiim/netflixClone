import 'package:flutter/material.dart';

import 'package:netflix_bloc/presentation/home/widgets/number_card.dart';
import 'package:netflix_bloc/presentation/home/widgets/title_widget.dart';

class TopShowsCardWidget extends StatelessWidget {
  String title;
  final List<String> posterList;
  
  TopShowsCardWidget({required this.title, required this.posterList, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleTextWidget(
          title: title,
        ),
        const SizedBox(height: 10),
        LimitedBox(
          maxHeight: 230,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(
              posterList.length,
              (index) => NumberCardWidget(
                index: index,
                
                imgUrl: posterList[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
