import 'package:flutter/material.dart';
import 'package:netflix_bloc/presentation/common_widgets/main_card.dart';
import 'package:netflix_bloc/presentation/home/widgets/title_widget.dart';

class NetflixOriginalsWidget extends StatelessWidget {
  final String title;
  final List<String> posterList;
  final double width;

  const NetflixOriginalsWidget({
    required this.title,
    Key? key,
    required this.posterList,
    required this.width,
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
            maxHeight: 400,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                posterList.length,
                (index) => MainCardWidget(
                  width: width,
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