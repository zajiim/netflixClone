import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/presentation/fast_laugh/widgets/video_menu_items.dart';

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CircleAvatar(
                    backgroundColor: kBackgroundColor.withOpacity(0.2),
                    radius: 25,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.volume_off,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/56v2KjBlU4XaOv9rVYEQypROD7P.jpg',
                        ),
                      ),
                    ),
                    VideoMenuItems(
                      menuIcon: Icons.emoji_emotions,
                      menuTitle: 'LOL',
                    ),
                    VideoMenuItems(
                      menuIcon: Icons.add,
                      menuTitle: 'My List',
                    ),
                    VideoMenuItems(
                      menuIcon: Icons.send,
                      menuTitle: 'Share',
                    ),
                    VideoMenuItems(
                      menuIcon: Icons.play_arrow_rounded,
                      menuTitle: 'Play',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
