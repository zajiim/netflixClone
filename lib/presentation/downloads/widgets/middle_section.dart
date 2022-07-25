import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/presentation/downloads/widgets/downloads_image_widget.dart';


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