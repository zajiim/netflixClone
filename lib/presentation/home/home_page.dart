import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_bloc/application/home/home_bloc.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/core/constants/strings.dart';
import 'package:netflix_bloc/presentation/home/widgets/main_screen_card_widget.dart';

import 'package:netflix_bloc/presentation/home/widgets/title_card_widget.dart';
import 'package:netflix_bloc/presentation/home/widgets/top_shows_card_widget.dart';

import '../../core/styles/styles.dart';
import 'widgets/netflix_originals.dart';
import 'widgets/popular_people_card_widget.dart';

Random random = Random();

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  ValueNotifier<bool> scrollDirectionNotifier = ValueNotifier(true);
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<HomeBloc>(context).add(
        const GetHomeSreenTrending(),
      );
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
                          color: kNetflixRed,
                        ),
                      );
                    } else if (state.isError) {
                      return const Center(
                        child: Text('Error while loading data',
                            style: errorMessageStyle),
                      );
                    }
//TrendingMoviesSection
                    final trendingMoviesList = state.trendingMoviesList
                        .map(
                            (items) => '$imageAppendUrl${items['poster_path']}')
                        .toList();

final trendingMoviesListTitle =
                        state.trendingMoviesList.map((item) {
                      return (item['original_title'] == null)
                          ? "Error while fetching data"
                          : item['original_title'];
                    }).toList();
                    // final trendingMoviesListTitle =
                    //     state.trendingMoviesList.map((item) {
                    //   return (item['original_title'] != null)
                    //       ? item['original_title']
                    //       : item['title'];
                    // }).toList();
                    final trendingMoviesBackdropList = state.trendingMoviesList
                        .map(
                            (item) => '$imageAppendUrl${item['backdrop_path']}')
                        .toList();
                    final trendingMoviesListOverview = state.trendingMoviesList
                        .map((item) => item['overview'])
                        .toList();

                        final trendingMoviesListReleaseDate =
                        state.trendingMoviesList.map((item) {
                      return (item['release_date'] == null)
                          ? "Error while fetching data"
                          : item['release_date'];
                    }).toList();
                    // final trendingMoviesListReleaseDate = state
                    //     .trendingMoviesList
                    //     .map((item) => item['release_date'])
                    //     .toList();

//NetflixOriginalsSection
                    final netflixOriginalsList = state
                        .trendingMoviesList.reversed
                        .map(
                            (items) => '$imageAppendUrl${items['poster_path']}')
                        .toList();

                    final netflixOriginalsListTitle =
                        state.trendingMoviesList.reversed.map((item) {
                      return (item['original_title'] == null)
                          ? "Error while fetching data"
                          : item['original_title'];
                    }).toList();
                    // final netflixOriginalsListTitle =
                    //     (state.trendingMoviesList.reversed)
                    //         .map((item) => item['title'])
                    //         .toList();

                    final netflixOriginalsBackdropList = state
                        .trendingMoviesList.reversed
                        .map(
                            (item) => '$imageAppendUrl${item['backdrop_path']}')
                        .toList();
                    final netflixOriginalsListOverview = state
                        .trendingMoviesList.reversed
                        .map((item) => item['overview'])
                        .toList();

                    final netflixOriginalsListReleaseDate =
                        state.trendingMoviesList.reversed.map((item) {
                      return (item['release_date'] == null)
                          ? "Error while fetching data"
                          : item['release_date'];
                    }).toList();
                    // final netflixOriginalsListReleaseDate = state
                    //     .trendingMoviesList.reversed
                    //     .map((item) => item['release_date'])
                    //     .toList();

//UpcomingMoviesSection
                    final upcomingMoviesList = state.upcomingMoviesList
                        .map((item) => '$imageAppendUrl${item['poster_path']}')
                        .toList();
                    final upcomingMoviesListTitle =
                        state.upcomingMoviesList.map((item) {
                      return (item['original_title'] != null)
                          ? item['original_title']
                          : item['title'];
                    }).toList();

                    final upcomingMoviesBackdropList = state.upcomingMoviesList
                        .map(
                            (item) => '$imageAppendUrl${item['backdrop_path']}')
                        .toList();
                    final upcomingMoviesListOverview = state.upcomingMoviesList
                        .map((item) => item['overview'])
                        .toList();
                    final upcomingMoviesListReleaseDate = state
                        .upcomingMoviesList
                        .map((item) => item['release_date'])
                        .toList();
//NowplayingMoviesSection
                    final nowPlayingMoviesList = state.nowPlayingShowsList
                        .map((item) => '$imageAppendUrl${item['poster_path']}')
                        .toList();
                    final nowPlayingMoviesListTitle =
                        state.nowPlayingShowsList.map((item) {
                      return (item['original_title'] != null)
                          ? item['original_title']
                          : item['title'];
                    }).toList();

                    final nowplayingShowsBackdropList = state
                        .nowPlayingShowsList
                        .map(
                            (item) => '$imageAppendUrl${item['backdrop_path']}')
                        .toList();
                    final nowplayingShowsListOverview = state
                        .nowPlayingShowsList
                        .map((item) => item['overview'])
                        .toList();
                    final nowplayingShowsListReleaseDate = state
                        .nowPlayingShowsList
                        .map((item) => item['release_date'])
                        .toList();

//AlltimePopularMovies
                    final allTimePopularList = state.popularMoviesList
                        .map((item) => '$imageAppendUrl${item['poster_path']}')
                        .toList();

//PopularMoviesSection
                    // final popularMoviesListTitle =
                    //     state.popularMoviesList.map((item) {
                    //   return (item['original_title'] != null)
                    //       ? item['original_title']
                    //       : item['title'];
                    // }).toList();
                    // final popularMoviesBackdropList = state.popularMoviesList
                    //     .map(
                    //         (item) => '$imageAppendUrl${item['backdrop_path']}')
                    //     .toList();
                    // final popularMoviesListOverview = state.popularMoviesList
                    //     .map((item) => item['overview'])
                    //     .toList();
                    // final popularMoviesListReleaseDate = state.popularMoviesList
                    //     .map((item) => item['release_date'])
                    //     .toList();
//PopularPeopleSection
                    final popularPeopleList = state.trendingPeopleList
                        .map((items) =>
                            '$imageAppendUrl${items['profile_path']}')
                        .toList();
                    final popularPeopleNameList = state.trendingPeopleList
                        .map((names) => '${names['name']}')
                        .toList();

                    return ListView(
                      children: [
                        MainScreenCard(
                            imgUrl: (nowPlayingMoviesList.isEmpty)
                                ? '$imageAppendUrl'
                                    'jRXYjXNq0Cs2TcJjLkki24MLp7u.jpg'
                                : nowPlayingMoviesList[0].toString()),
                        TitleCardWidget(
                          title: "Released in the past year",
                          posterList: upcomingMoviesList,
                          titleList: upcomingMoviesListTitle,
                          backdropList: upcomingMoviesBackdropList,
                          overviewList: upcomingMoviesListOverview,
                          releaseDateList: upcomingMoviesListReleaseDate,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        PopularPeopleCardWidget(
                          title: 'Popular People',
                          posterList: popularPeopleList,
                          nameList: popularPeopleNameList,
                        ),
                        TitleCardWidget(
                          title: 'Now Playing',
                          posterList: nowPlayingMoviesList,
                          titleList: nowPlayingMoviesListTitle,
                          backdropList: nowplayingShowsBackdropList,
                          overviewList: nowplayingShowsListOverview,
                          releaseDateList: nowplayingShowsListReleaseDate,
                        ),
                        NetflixOriginalsWidget(
                          width: 250,
                          title: 'Netflix Originals',
                          posterList: netflixOriginalsList,
                          titleList: netflixOriginalsListTitle,
                          backdropList: netflixOriginalsBackdropList,
                          overviewList: netflixOriginalsListOverview,
                          releaseDateList: netflixOriginalsListReleaseDate,
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
                          titleList: upcomingMoviesListTitle,
                          overviewList: upcomingMoviesListOverview,
                          releaseDateList: upcomingMoviesListReleaseDate,
                          backdropList: upcomingMoviesBackdropList,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        TitleCardWidget(
                          title: 'Most Awaited',
                          posterList: trendingMoviesList,
                          titleList: trendingMoviesListTitle,
                          overviewList: trendingMoviesListOverview,
                          releaseDateList: trendingMoviesListReleaseDate,
                          backdropList: trendingMoviesBackdropList,
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
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 15, bottom: 15),
                              child: Row(
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
