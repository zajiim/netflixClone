import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/presentation/new&hot/widgets/side_button_widget.dart';

class IndividualComingSoonWidget extends StatelessWidget {
  final String id;
  final String? imgUrl;
  final String? month;
  final String? date;
  final String? showName;

  final String? releaseDate;
  final String? overview;
  IndividualComingSoonWidget({
    Key? key,
    required this.id,
    this.imgUrl,
    this.showName,
    this.releaseDate,
    this.overview,
    this.month,
    this.date,
  }) : super(key: key);

  List days = [
    "Sunday",
    "Wednesday",
    "Thursday",
    "Friday",
  ];
  final _random = Random();
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
            children: [
              Text(
                month.toString(),
                style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    ),
              ),
              Text(
                date.toString(),
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
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
                      imgUrl.toString(),
                      fit: BoxFit.contain,
                      // loadingBuilder:
                      //     (context, child, ImageChunkEvent? progressIndicator) {
                      //   if (progressIndicator == null) {
                      //     return child;
                      //   } else {
                      //     return const Center(
                      //       child: CircularProgressIndicator(strokeWidth: 2),
                      //     );
                      //   }
                      // },
                      // errorBuilder: (context, error, stackTrace) {
                      //   return const Center(
                      //     child: Icon(
                      //       Icons.wifi_off,
                      //       color: kWhiteColor,
                      //     ),
                      //   );
                      // },
                    ),
                  ),
                  Positioned(
                    bottom: 18,
                    right: 10,
                    child: CircleAvatar(
                      backgroundColor: kBackgroundColor.withOpacity(0.2),
                      radius: 20,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.volume_off,
                          size: 15,
                          color: kWhiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // const SizedBox(
              //   height: 20,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 200,
                    child: Text(
                      showName.toString(),
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Spacer(),
                  // const SizedBox(
                  //   width: 20,
                  // ),
                  Expanded(
                    child: SideButtons(
                      icon: Icons.notifications_outlined,
                      title: 'Remind Me',
                    ),
                  ),
                  SideButtons(
                    icon: Icons.info_outline,
                    title: 'Info',
                  ),
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
                    'Coming on ${days[_random.nextInt(days.length)]}',
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
                  Text(
                    showName.toString(),
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    overview.toString(),
                    style: const TextStyle(color: kGreyColor),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
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
