import 'package:flutter/material.dart';

class SearchTextWidget extends StatelessWidget {
  final String title;
  const SearchTextWidget({
    required this.title,
    Key? key,
  }) : super(key: key);

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
