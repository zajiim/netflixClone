import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';

import '../../../core/styles/styles.dart';
import 'main_card_poster_widget.dart';

class SearchResultListWidget extends StatelessWidget {
  const SearchResultListWidget({
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
            imgUrl: imgUrl,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Name: ',
                      style: textStyle,
                    ),
                    Expanded(
                      child: Text(
                        tvShowName,
                        style: listStyle,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Vote average: ',
                      style: textStyle,
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
                      style: textStyle,
                    ),
                    Expanded(
                      child: Text(
                        releaseDate,
                        style: listStyle,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Overview: ',
                          style: textStyle,
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.download,
                              color: kGreenColor,
                            ))
                      ],
                    ),
                    Expanded(
                      child: Text(
                        overview,
                        style: listStyleNormal,
                        maxLines: 8,
                        overflow: TextOverflow.ellipsis,
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
