import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';

class TitleBar extends StatelessWidget {
  const TitleBar(this.titleName, {Key? key}) : super(key: key);

  final String titleName;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            titleName,
            style: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Icon(
          Icons.cast,
          color: kWhiteColor,
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
      ],
    );
  }
}
