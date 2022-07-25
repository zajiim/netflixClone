import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';

class SideButtons extends StatelessWidget {
  IconData icon;
  String title;
  SideButtons({
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
          size: 25,
          color: kWhiteColor,
        ),
        Text(
          title,
          style: const TextStyle(
            color: kWhiteColor,
            fontSize: 10,
            fontWeight: FontWeight.w800,
          ),
        )
      ],
    );
  }
}
