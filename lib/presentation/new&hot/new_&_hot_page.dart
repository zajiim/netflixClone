import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/presentation/common_widgets/title_bar.dart';
import 'package:netflix_bloc/presentation/new&hot/widgets/coming_soon_widget.dart';
import 'package:netflix_bloc/presentation/new&hot/widgets/everyones_watching_widget.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(
              90.0,
            ),
            child: AppBar(
              title: const Text(
                'New & Hot',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  color: kWhiteColor,
                  size: 30,
                ),
                const SizedBox(
                  width: 15.0,
                ),
                Container(
                  width: 40.0,
                  height: 20.0,
                  color: Colors.blue,
                ),
                const SizedBox(
                  height: 10,
                )
              ],
              bottom: TabBar(
                  isScrollable: true,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        25,
                      ),
                      color: kWhiteColor),
                  labelColor: kBackgroundColor,
                  labelStyle: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w800),
                  unselectedLabelColor: kWhiteColor,
                  tabs: const [
                    Tab(
                      text: '🍿 Coming Soon',
                    ),
                    Tab(
                      text: '👀 Everyone\'s watching',
                    )
                  ]),
            ),
          ),
          body: const TabBarView(
            children: [
              ComingSoonWidget(),
              EveryonesWatchingWidget()
            ],
          )),
    );
  }
}
