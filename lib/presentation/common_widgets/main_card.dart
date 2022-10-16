import 'package:flutter/material.dart';
import 'package:netflix_bloc/presentation/home/details/details_screen.dart';

class MainCardWidget extends StatelessWidget {
  final String imgUrl;
  final String overview;
  final String backdropUrl;
  double width;
  final String? releaseDate;
  final String title;
  MainCardWidget(
      {this.width = 150,
      required this.imgUrl,
      Key? key,
      required this.title,
      required this.overview,
      this.releaseDate, required this.backdropUrl})
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
              releaseDate: releaseDate,
              overview: overview,
              imgUrl: imgUrl,
              title: title.toString(),
              backdropUrl: backdropUrl,
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
