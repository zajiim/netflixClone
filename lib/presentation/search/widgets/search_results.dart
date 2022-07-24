import 'package:flutter/material.dart';
import 'package:netflix_bloc/presentation/search/widgets/search_text_widget.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/vUUqzWa2LnHIVqkaKVlVGkVcZIW.jpg';

class SearchResultsWidget extends StatelessWidget {
  const SearchResultsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchTextWidget(
          title: 'Movies and TV',
        ),
        const SizedBox(
          height: 10.0,
        ),
        Expanded(
          child: GridView.count(
            mainAxisSpacing: 8,
            crossAxisSpacing: 5,
            childAspectRatio: 2 / 3,
            shrinkWrap: true,
            crossAxisCount: 3,
            children: List.generate(
              20,
              (index) => const MainCardPoster(),
            ),
          ),
        ),
      ],
    );
  }
}

class MainCardPoster extends StatelessWidget {
  const MainCardPoster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          8.0,
        ),
        image: const DecorationImage(
            image: NetworkImage(
              imageUrl,
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}
