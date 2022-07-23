import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/presentation/common_widgets/title_bar.dart';

class DownloadsScreen extends StatelessWidget {
  DownloadsScreen({Key? key}) : super(key: key);

  final _widgetList = [
    const _SmartDownloads(),
    MiddleSection(),
    const ButtonSection()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(
          50.0,
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 15.0,
            right: 15.0,
          ),
          child: TitleBar(
            'Downloads',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 15.0,
          right: 15.0,
          top: 10.0,
        ),
        child: ListView.separated(
            itemBuilder: ((context, index) => _widgetList[index]),
            separatorBuilder: ((context, index) => const SizedBox(
                  height: 15.0,
                )),
            itemCount: _widgetList.length),
      ),
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.settings,
          color: kWhiteColor,
        ),
        SizedBox(
          width: 10.0,
        ),
        Text(
          'Smart Downloads',
          style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}

class MiddleSection extends StatelessWidget {
  MiddleSection({Key? key}) : super(key: key);
  final _imageList = [
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/62HCnUTziyWcpDaBO2i1DX17ljH.jpg',
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/qvqyDj34Uivokf4qIvK4bH0m0qF.jpg',
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/rkpLvPDe0ZE62buUS32exdNr7zD.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads for you',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Text(
          'We\'ll download a personalised selection of \nmovies and shows for you, so there\'s \n always something to watch on your \n device.',
          style: TextStyle(
              fontSize: 16.0, color: kGreyColor, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: screenWidth.width,
          width: screenWidth.width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                backgroundColor: kGreyColor.withOpacity(0.5),
                radius: screenWidth.width * 0.4,
              ),
              DownloadsImageWidget(
                imageList: _imageList[0],
                margin: const EdgeInsets.only(
                  left: 140.0,
                  bottom: 20,
                ),
                angle: 20,
                size: Size(
                  screenWidth.width * 0.4,
                  screenWidth.width * 0.60,
                ),
              ),
              DownloadsImageWidget(
                imageList: _imageList[1],
                margin: const EdgeInsets.only(
                  right: 140.0,
                  bottom: 20,
                ),
                angle: -20,
                size: Size(
                  screenWidth.width * 0.4,
                  screenWidth.width * 0.60,
                ),
              ),
              DownloadsImageWidget(
                imageList: _imageList[2],
                margin: const EdgeInsets.only(
                  top: 20.0,
                ),
                size: Size(
                  screenWidth.width * 0.4,
                  screenWidth.width * 0.65,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          width: screenWidth.width * 0.75,
          height: 50.0,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                kSetupButtonColor,
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Set up',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        SizedBox(
          height: 50.0,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
                Colors.white,
              ),
            ),
            onPressed: () {},
            child: const Text(
              'See what you can download',
              style: TextStyle(
                color: kBackgroundColor,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
    Key? key,
  }) : super(key: key);
  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          image: DecorationImage(
            image: NetworkImage(
              imageList,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
