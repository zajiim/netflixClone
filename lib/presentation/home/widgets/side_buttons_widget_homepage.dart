import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';

class SideButtonHomePage extends StatelessWidget {
  IconData icon;
  String title;
  SideButtonHomePage({
    required this.icon,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 30,
          color: kWhiteColor,
        ),
        Text(
          title,
          style: const TextStyle(
            color: kWhiteColor,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        )
      ],
    );
  }
}
