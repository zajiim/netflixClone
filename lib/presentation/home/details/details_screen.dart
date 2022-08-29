import "package:flutter/material.dart";
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/core/constants/strings.dart';

class DetailsScreen extends StatelessWidget {
  final imgUrl;
  const DetailsScreen({Key? key, required this.imgUrl}) : super(key: key);

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
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      alignment: Alignment.topCenter,
                      // fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://www.themoviedb.org/t/p/original/qS2ViQwlWUECiAdkIuEaJZoq0QW.jpg',
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
                    children: const [
                      Text(
                        "The Batman (2022)",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("04/03/2022 (IN)"),
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
              children: const [
                Text(
                  'OverView: ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Text(
                    "In his second year of fighting crime, Batman uncovers corruption in Gotham City that connects to his own family while facing a serial killer known as the Riddler.",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          Spacer()
        ],
      ),
    );
  }
}
