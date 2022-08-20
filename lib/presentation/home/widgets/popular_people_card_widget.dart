import "package:flutter/material.dart";
import 'package:netflix_bloc/presentation/home/widgets/popular_card_widget.dart';
import 'package:netflix_bloc/presentation/home/widgets/title_widget.dart';

class PopularPeopleCardWidget extends StatelessWidget {
  final String title;
  final List<String> posterList;
  final List<String> nameList;

  const PopularPeopleCardWidget({
    Key? key,
    required this.title,
    required this.posterList, required this.nameList,
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
            maxHeight: 220,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                posterList.length,
                (index) => PopularCardWidget(
                  imgUrl: posterList[index],
                  name: nameList[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
