import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';

class MainScreenCard extends StatelessWidget {
  const MainScreenCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/13r1DFhfL0qufFjXnrvWuh6qKqH.jpg',
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SideButtons(icon: Icons.add, title: 'My List'),
                _playButton(),
                SideButtons(icon: Icons.info_outline, title: 'Info'),
              ],
            ),
          ),
        ),
      ],
    );
  }

  TextButton _playButton() {
    return TextButton.icon(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          kWhiteColor,
        ),
      ),
      onPressed: () {},
      icon: const Icon(
        Icons.play_arrow,
        size: 35,
        color: kBackgroundColor,
      ),
      label: const Padding(
        padding: EdgeInsets.only(right: 12),
        child: Text(
          'Play',
          style: TextStyle(
            color: kBackgroundColor,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}

class SideButtons extends StatelessWidget {
  IconData icon;
  String title;
  SideButtons({
    required this.icon,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 35,
          color: kWhiteColor,
        ),
        Text(
          title,
          style: const TextStyle(
            color: kWhiteColor,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        )
      ],
    );
  }
}
