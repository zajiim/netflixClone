import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/presentation/new&hot/widgets/side_button_widget.dart';

class IndividualComingSoonWidget extends StatelessWidget {
  const IndividualComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          height: screenSize.height * 0.6,
          width: 70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Jul',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              ),
              Text(
                '25',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        SizedBox(
          width: screenSize.width - 70,
          height: screenSize.height * 0.6,
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 200,
                    child: Image.network(
                      'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/hmLTIRtVyTHShJl2Wb8LHmvUgJm.jpg',
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
                    'Sherlock',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  SideButtons(
                      icon: Icons.notifications_outlined, title: 'Remind Me'),
                  SideButtons(icon: Icons.info_outline, title: 'Info'),
                  const SizedBox(
                    width: 8,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Coming on Friday',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: kWhiteColor.withOpacity(0.7)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/netflix_logo.png',
                        width: 20,
                        height: 20,
                      ),
                      const Text(
                        'FILM',
                        style: TextStyle(
                            letterSpacing: 1.5,
                            fontSize: 17,
                            fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Sherlock',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'The fourth series begins with the nation’s favourite detective, the mercurial Sherlock Holmes, back once more on British soil, as Doctor Watson and his wife, Mary, prepare for their biggest ever challenge - becoming parents for the first time.',
                    style: TextStyle(color: kGreyColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}