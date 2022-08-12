import 'package:flutter/material.dart';

import '../../../core/styles/search_list_text_style.dart';
import 'main_card_poster_widget.dart';

class SearchResultListWidget extends StatelessWidget {
  SearchResultListWidget({
    Key? key,
    required this.imgUrl,
    required this.tvShowName,
    required this.overview,
    required this.voting,
    required this.releaseDate,
  }) : super(key: key);

  final String imgUrl;
  final String tvShowName;
  final String overview;
  final double voting;
  final String releaseDate;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Row(
        children: [
          MainCardPoster(
            imgUrl: imgUrl ,
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 240,
            width: screenSize.width - 170,
            // color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Name: ',
                      style: listStyle,
                    ),
                    Text(
                      tvShowName,
                      style: listStyle,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Vote average: ',
                      style: listStyle,
                    ),
                    Text(
                      voting.toString(),
                      style: listStyle,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Release date: ',
                      style: listStyle,
                    ),
                    Text(
                      releaseDate,
                      style: listStyle,
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Overview: ',
                      style: listStyle,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Text(
                          overview,
                          style: listStyle,
                          maxLines: 6,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
