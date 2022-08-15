import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/presentation/home/widgets/side_buttons_widget_homepage.dart';

class IndividualEveryonesWatching extends StatelessWidget {
  final String? movieName;
  final String? imgUrl;
  final String? overview;
  const IndividualEveryonesWatching({
    Key? key,
    this.movieName,
    this.imgUrl,
    this.overview,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          movieName.toString(),
          style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          overview.toString(),
          style: const TextStyle(color: kGreyColor),
          maxLines: 6,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          height: 20,
        ),
        Stack(
          children: [
            SizedBox(
              height: 180,
              child: Image.network(
                imgUrl.toString(),
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 10,
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
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                movieName.toString(),
                style:
                    const TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Row(
                children: [
                  SideButtonHomePage(icon: Icons.send, title: 'Share'),
                  const SizedBox(
                    width: 10,
                  ),
                  SideButtonHomePage(icon: Icons.add, title: 'My List'),
                  const SizedBox(
                    width: 10,
                  ),
                  SideButtonHomePage(icon: Icons.play_arrow, title: 'Play')
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
