import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';

class SmartDownloads extends StatelessWidget {
  const SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.settings,
          color: kWhiteColor,
        ),
        SizedBox(
          width: 10.0,
        ),
        Text(
          'Smart Downloads',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
