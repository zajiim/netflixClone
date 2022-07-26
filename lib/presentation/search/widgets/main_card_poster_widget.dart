import 'package:flutter/material.dart';

class MainCardPoster extends StatelessWidget {
  final String imgUrl;
 const MainCardPoster({Key? key, required this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          8.0,
        ),
        image: DecorationImage(
          image: NetworkImage(
            imgUrl,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
