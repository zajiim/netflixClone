import 'package:flutter/material.dart';
import 'package:netflix_bloc/presentation/home/details/details_screen.dart';

class MainCardWidget extends StatelessWidget {
  String imgUrl;
  double width;
  MainCardWidget({this.width = 150, required this.imgUrl, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsScreen(
              imgUrl: imgUrl,
            ),
          ),
        ),
        child: Container(
          width: width,
          height: 220,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(imgUrl.toString()),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
