import 'package:flutter/material.dart';

class MainCardWidget extends StatelessWidget {
  String imgUrl;
  MainCardWidget({required this.imgUrl, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
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
    );
  }
}