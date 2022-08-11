import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_bloc/core/constants/strings.dart';
import 'package:netflix_bloc/presentation/search/widgets/search_text_widget.dart';

import '../../../application/search/search_bloc.dart';

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
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              return GridView.count(
                mainAxisSpacing: 8,
                crossAxisSpacing: 5,
                childAspectRatio: 2 / 3,
                shrinkWrap: true,
                crossAxisCount: 3,
                children: List.generate(20, (index) {
                  final tvShows = state.searchResultList[index];
                  return MainCardPoster(
                    imgUrl: '$imageAppendUrl${tvShows.posterPath}',
                  );
                }),
              );
            },
          ),
        ),
      ],
    );
  }
}

class MainCardPoster extends StatelessWidget {
  final String imgUrl;
  MainCardPoster({Key? key, required this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          8.0,
        ),
        image: DecorationImage(
            image: NetworkImage(
              imgUrl,
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}
