import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';

ValueNotifier<int> pageIndexNotifier = ValueNotifier(0);

class BottomNavBarWidget extends StatelessWidget {
  const BottomNavBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: pageIndexNotifier,
        builder: ((context, int newVal, _) {
          return BottomNavigationBar(
            currentIndex: newVal,
            onTap: (value) => pageIndexNotifier.value = value,
            type: BottomNavigationBarType.fixed,
            backgroundColor: kBackgroundColor,
            selectedItemColor: kSelectedItemColor,
            unselectedItemColor: kUnSelectedItemColor,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    size: 35,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.perm_media,
                    size: 35,
                  ),
                  label: 'New & Hot'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.sentiment_satisfied_alt,
                    size: 35,
                  ),
                  label: 'Fast Laugh'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search_outlined,
                    size: 35,
                  ),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.download_for_offline_outlined,
                    size: 35,
                  ),
                  label: 'Downloads'),
            ],
          );
        }));
  }
}
