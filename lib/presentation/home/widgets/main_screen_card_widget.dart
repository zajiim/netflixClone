import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/presentation/home/widgets/side_buttons_widget_homepage.dart';

class MainScreenCard extends StatelessWidget {
   MainScreenCard({Key? key, required this.imgUrl}) : super(key: key);
  final String? imgUrl;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration:  BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imgUrl.toString(),
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
                SideButtonHomePage(icon: Icons.add, title: 'My List'),
                _playButton(),
                SideButtonHomePage(icon: Icons.info_outline, title: 'Info'),
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
