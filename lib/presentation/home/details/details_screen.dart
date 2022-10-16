import "package:flutter/material.dart";
import 'package:netflix_bloc/core/colors/colors.dart';

class DetailsScreen extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String? overview;
  final String? releaseDate;
  final String backdropUrl;
  const DetailsScreen(
      {Key? key,
      required this.imgUrl,
      required this.title,
      this.overview,
      this.releaseDate, required this.backdropUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dimension = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  height: double.infinity,
                  decoration:  BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.topCenter,
                      // fit: BoxFit.cover,
                      image: NetworkImage(
                        backdropUrl,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 140,
                  left: 20,
                  child: Container(
                    height: 200,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          //
                          imgUrl.toString(),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: dimension.width * 0.5,
                  top: dimension.height * 0.28,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("$releaseDate (IN)"),
                      Text("Crime, Mystery, Thriller"),
                      Text("2h 57m"),
                    ],
                  ),
                ),
                Positioned(
                  top: 25,
                  left: 15,
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: kWhiteColor,
                      size: 28,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'OverView: ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Text(
                    overview.toString(),
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          const Spacer()
        ],
      ),
    );
  }
}
