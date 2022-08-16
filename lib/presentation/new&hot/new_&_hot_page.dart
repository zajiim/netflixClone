import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_bloc/application/new_and_hot/new_and_hot_bloc.dart';
import 'package:netflix_bloc/core/colors/colors.dart';

import 'package:netflix_bloc/presentation/new&hot/widgets/coming_soon_widget.dart';
import 'package:netflix_bloc/presentation/new&hot/widgets/everyones_watching_widget.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<NewAndHotBloc>(context).add(
        const ComingSoonLoaded(),
      );
      BlocProvider.of<NewAndHotBloc>(context).add(
        const EveryOnesWatchingLoaded(),
      );
    });
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
                  height: 25.0,
                  width: 25.0,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(
                      'assets/images/avatar.png',
                    ),
                  )),
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
              EveryonesWatchingWidget(),
            ],
          )),
    );
  }
}
