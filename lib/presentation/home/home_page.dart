import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_bloc/application/home/home_bloc.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/core/constants/strings.dart';
import 'package:netflix_bloc/presentation/home/widgets/main_screen_card_widget.dart';

import 'package:netflix_bloc/presentation/home/widgets/title_card_widget.dart';
import 'package:netflix_bloc/presentation/home/widgets/top_shows_card_widget.dart';

import '../../application/downloads/downloads_bloc.dart';
import '../../core/styles/styles.dart';

Random random = Random();

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  ValueNotifier<bool> scrollDirectionNotifier = ValueNotifier(true);
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(
        const GetHomeSreenTrending(),
      );
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImages());
    });

    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: scrollDirectionNotifier,
        builder: ((context, value, child) {
          return NotificationListener<UserScrollNotification>(
            onNotification: (notification) {
              final ScrollDirection direction = notification.direction;
              if (direction == ScrollDirection.reverse) {
                scrollDirectionNotifier.value = false;
              } else if (direction == ScrollDirection.forward) {
                scrollDirectionNotifier.value = true;
              }
              return true;
            },
            child: Stack(
              children: [
                BlocBuilder<HomeBloc, HomeState>(
                  builder: (context, state) {
                    if (state.isLoading) {
                      return const Center(
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                        ),
                      );
                    } else if (state.isError) {
                      return const Center(
                        child: Text('Error while loading data',
                            style: errorMessageStyle),
                      );
                    }
                    final trendingMoviesList = state.trendingMoviesList
                        .map(
                            (items) => '$imageAppendUrl${items['poster_path']}')
                        .toList();

                    final upcomingMoviesList = state.upcomingMoviesList
                        .map((item) => '$imageAppendUrl${item['poster_path']}')
                        .toList();
                    final nowPlayingMoviesList = state.nowPlayingShowsList
                        .map((item) => '$imageAppendUrl${item['poster_path']}')
                        .toList();
                    final allTimePopularList = state.popularMoviesList
                        .map((item) => '$imageAppendUrl${item['poster_path']}')
                        .toList();

                    return ListView(
                      children: [
                        BlocBuilder<DownloadsBloc, DownloadsState>(
                          builder: (context, state) {
                            final imageUrl = state.downloads[0].posterPath;

                            return MainScreenCard(
                                imgUrl: '$imageAppendUrl$imageUrl');
                          },
                        ),
                        TitleCardWidget(
                          title: "Released in the past year",
                          posterList: upcomingMoviesList,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TitleCardWidget(
                          title: 'Now Playing',
                          posterList: nowPlayingMoviesList,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TopShowsCardWidget(
                          title: 'Alltime Top Rated movies',
                          posterList: allTimePopularList,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TitleCardWidget(
                          title: 'Trending Now',
                          posterList: upcomingMoviesList,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TitleCardWidget(
                          title: 'Most Awaited',
                          posterList: trendingMoviesList,
                        ),
                      ],
                    );
                  },
                ),
                scrollDirectionNotifier.value == true
                    ? AnimatedContainer(
                        duration: const Duration(
                          milliseconds: 1200,
                        ),
                        width: double.infinity,
                        height: 130,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/images/netflix_logo.png',
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                const Icon(
                                  Icons.cast,
                                  color: kWhiteColor,
                                ),
                                const SizedBox(
                                  width: 15.0,
                                ),
                                Container(
                                  height: 25.0,
                                  width: 25.0,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                    image: AssetImage(
                                      'assets/images/avatar.png',
                                    ),
                                  )),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'TV Shows',
                                  style: TextStyle(
                                      color: kWhiteColor.withOpacity(0.7),
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  'Movies',
                                  style: TextStyle(
                                      color: kWhiteColor.withOpacity(0.7),
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Categories',
                                      style: TextStyle(
                                          color: kWhiteColor.withOpacity(0.7),
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: kWhiteColor.withOpacity(0.7),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    : const SizedBox(
                        height: 40,
                      ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
