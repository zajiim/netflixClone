import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';

class VideoMenuItems extends StatelessWidget {
  final IconData menuIcon;
  final String menuTitle;
  const VideoMenuItems(
      {required this.menuIcon, required this.menuTitle, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 12,
        horizontal: 12,
      ),
      child: Column(
        children: [
          Icon(
            menuIcon,
            color: kWhiteColor,
            size: 40,
          ),
          Text(menuTitle)
        ],
      ),
    );
  }
}
