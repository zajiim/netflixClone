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
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.perm_media,
                  ),
                  label: 'New & Hot'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search_outlined,
                  ),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.download_for_offline,
                  ),
                  label: 'Downloads'),
            ],
          );
        }));
  }
}
