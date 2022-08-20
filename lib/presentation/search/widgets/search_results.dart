import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_bloc/core/constants/strings.dart';
import 'package:netflix_bloc/presentation/search/widgets/search_text_widget.dart';

import '../../../application/search/search_bloc.dart';

import 'search_result_list_widget.dart';

class SearchResultsWidget extends StatelessWidget {
  const SearchResultsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextWidget(
          title: 'Movies and TV',
        ),
        const SizedBox(
          height: 10.0,
        ),

        //33:06
        // Expanded(
        //   child: BlocBuilder<SearchBloc, SearchState>(
        //     builder: (context, state) {
        //       // return Container(
        //       //   width: double.infinity,
        //       //   height: 100,
        //       //   color: Colors.deepPurple,
        //       // );
        //       return GridView.count(
        //         mainAxisSpacing: 8,
        //         crossAxisSpacing: 5,
        //         childAspectRatio: 2 / 3,
        //         shrinkWrap: true,
        //         crossAxisCount: 1,
        //         children: List.generate(20, (index) {
        //           final tvShows = state.searchResultList[index];
        //           return (state.searchResultList.isNotEmpty)
        //               ? MainCardPoster(

        //                   imgUrl: '$imageAppendUrl${tvShows.posterPath}',
        //                 )
        //               : const Center(
        //                   child: Text(
        //                   "No results found",
        //                 ));
        //         }),
        //       );
        //     },
        //   ),
        // ),
        BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return Expanded(
              child: ListView.separated(
                itemBuilder: ((context, index) {
                  final tvShows = state.searchResultList[index];
                  return SearchResultListWidget(
                    imgUrl: (tvShows.posterPath != null)
                        ? '$imageAppendUrl${tvShows.posterPath}'
                        : 'https://w7.pngwing.com/pngs/349/105/png-transparent-false-error-missing-absent-x-red-cross-letter-circle-gui.png',
                    // 'https://w7.pngwing.com/pngs/871/8/png-transparent-computer-icons-error-triangle-icon-angle-triangle-black-thumbnail.png',
                    releaseDate: tvShows.releaseDate ?? 'No data found',
                    overview: tvShows.overview ?? 'No data found',
                    tvShowName: tvShows.name ?? 'No data found',
                    voting: tvShows.voteAverage!,
                  );
                }),
                separatorBuilder: ((context, index) => const SizedBox(
                      height: 10,
                    )),
                itemCount: state.searchResultList.length,
              ),
            );
          },
        ),
      ],
    );
  }
}
