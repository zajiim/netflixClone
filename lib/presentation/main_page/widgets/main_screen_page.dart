import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/presentation/downloads/download_page.dart';
import 'package:netflix_bloc/presentation/fast_laugh/fast_laugh.dart';
import 'package:netflix_bloc/presentation/home/home_page.dart';
import 'package:netflix_bloc/presentation/main_page/widgets/bottom_nav_bar.dart';
import 'package:netflix_bloc/presentation/new&hot/new_&_hot_page.dart';
import 'package:netflix_bloc/presentation/search/search_page.dart';

class MainScreenPage extends StatelessWidget {
  MainScreenPage({Key? key}) : super(key: key);

  final _pages = [
    HomeScreen(),
    const NewAndHotScreen(),
    const FastLaughScreen(),
    const SearchScreen(),
    DownloadsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: pageIndexNotifier,
          builder: ((context, int value, _) {
            return _pages[value];
          }),
        ),
      ),
      bottomNavigationBar: const BottomNavBarWidget(),
    );
  }
}
