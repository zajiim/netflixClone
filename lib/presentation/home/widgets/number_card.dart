import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';

class NumberCardWidget extends StatelessWidget {
  int index;
  String imgUrl;
  NumberCardWidget({required this.index, required this.imgUrl, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 50,
            ),
            Container(
              width: 150,
              height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imgUrl.toString()),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ],
        ),
        Positioned(
          left: 10,
          bottom: 5,
          child: BorderedText(
            strokeWidth: 10,
            strokeColor: kWhiteColor,
            child: Text(
              '${index + 1}',
              style: const TextStyle(
                  color: kBackgroundColor,
                  fontSize: 140,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
