import 'package:flutter/material.dart';
import 'package:netflix_bloc/presentation/common_widgets/main_card.dart';
import 'package:netflix_bloc/presentation/home/widgets/title_widget.dart';

class TitleCardWidget extends StatelessWidget {
  final String title;
  final List<String> posterList;

  const TitleCardWidget({
    required this.title,
    Key? key,
    required this.posterList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
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
                (index) => MainCardWidget(
                  imgUrl: posterList[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
