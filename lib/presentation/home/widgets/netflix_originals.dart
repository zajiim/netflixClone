import 'package:flutter/material.dart';
import 'package:netflix_bloc/presentation/common_widgets/main_card.dart';
import 'package:netflix_bloc/presentation/home/widgets/title_widget.dart';

class NetflixOriginalsWidget extends StatelessWidget {
  final String title;
  final List<String> posterList;
  final double width;
  final String? releaseDate;
  final String? overview;
  final List<dynamic?> titleList;
  final List<dynamic?> backdropList;
  final List<dynamic?> overviewList;
  final List<dynamic?> releaseDateList;

  const NetflixOriginalsWidget({
    required this.title,
    Key? key,
    required this.posterList,
    required this.width,
    this.releaseDate,
    this.overview,
    required this.titleList,
    required this.backdropList,
    required this.overviewList,
    required this.releaseDateList,
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
                  backdropUrl: backdropList[index],
                  overview: overviewList[index],
                  releaseDate: releaseDateList[index],
                  title: titleList[index],
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
