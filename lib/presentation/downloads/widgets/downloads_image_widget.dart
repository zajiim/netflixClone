import 'package:flutter/material.dart';
import 'dart:math';

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
    Key? key,
  }) : super(key: key);
  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: NetworkImage(
              imageList,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
