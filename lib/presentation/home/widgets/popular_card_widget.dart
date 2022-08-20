import "package:flutter/material.dart";
import 'package:netflix_bloc/core/colors/colors.dart';

class PopularCardWidget extends StatelessWidget {
  final String? imgUrl;
  final String? name;
  const PopularCardWidget({Key? key, this.imgUrl, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 160,
            height: 160,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imgUrl.toString()),
              ),
            ),
          ),
          Text(
            name.toString().toUpperCase(),
            style: const TextStyle(
              color: kGreyColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
