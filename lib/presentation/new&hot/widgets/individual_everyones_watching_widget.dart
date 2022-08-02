import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/presentation/home/widgets/side_buttons_widget_homepage.dart';

class IndividualEveryonesWatching extends StatelessWidget {
  const IndividualEveryonesWatching({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        const Text(
          'The Wolf of Wall Street',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'A New York stockbroker refuses to cooperate in a large securities fraud case involving corruption on Wall Street, corporate banking world and mob infiltration. Based on Jordan Belfort\'s autobiography.',
          style: TextStyle(color: kGreyColor),
        ),
        const SizedBox(
          height: 20,
        ),
        Stack(
          children: [
            SizedBox(
              child: Image.network(
                'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/blbA7NEHARQOWy5i9VF5K2kHrPc.jpg',
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'The Wolf of Wall Street',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w700),
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
