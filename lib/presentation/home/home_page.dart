import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/presentation/home/widgets/main_screen_card_widget.dart';

import 'package:netflix_bloc/presentation/home/widgets/title_card_widget.dart';
import 'package:netflix_bloc/presentation/home/widgets/top_shows_card_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  ValueNotifier<bool> scrollDirectionNotifier = ValueNotifier(true);
  @override
  Widget build(BuildContext context) {
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
                ListView(
                  children: [
                    const MainScreenCard(),
                    TitleCardWidget(
                      title: 'Released in the past year',
                      imgUrl:
                          'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/6zltP23zLGPogsHZUazSrrwNuKs.jpg',
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TitleCardWidget(
                      title: 'Trending Now',
                      imgUrl:
                          'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rJHC1RUORuUhtfNb4Npclx0xnOf.jpg',
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TopShowsCardWidget(
                      title: 'Top 10 Shows Airing now',
                      imgUrl:
                          'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/oktTNFM8PzdseiK1X0E0XhB6LvP.jpg',
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TitleCardWidget(
                      title: 'Tense Dramas',
                      imgUrl:
                          'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/wKiOkZTN9lUUUNZLmtnwubZYONg.jpg',
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TitleCardWidget(
                      title: 'South Indian Movies',
                      imgUrl:
                          'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/kzZUa05wZOEiC2UVuJA2T8VrETU.jpg',
                    ),
                  ],
                ),
                scrollDirectionNotifier.value == true
                    ? AnimatedContainer(
                        duration: const Duration(
                          milliseconds: 1200,
                        ),
                        width: double.infinity,
                        height: 130,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  color: Colors.blue,
                                  height: 25.0,
                                  width: 25.0,
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
