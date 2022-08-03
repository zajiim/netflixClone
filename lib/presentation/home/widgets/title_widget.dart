import 'package:flutter/material.dart';

class TitleTextWidget extends StatelessWidget {
  String title;
  TitleTextWidget({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
