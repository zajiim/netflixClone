import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_bloc/application/downloads/downloads_bloc.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/core/constants/strings.dart';
import 'package:netflix_bloc/presentation/downloads/widgets/downloads_image_widget.dart';
import 'dart:core';

class MiddleSection extends StatelessWidget {
  const MiddleSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImages());
    });
    // BlocProvider.of<DownloadsBloc>(context)
    //     .add(const DownloadsEvent.getDownloadsImages());

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
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return SizedBox(
              height: screenWidth.width,
              width: screenWidth.width,
              child: state.isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: kGreyColor.withOpacity(0.5),
                          radius: screenWidth.width * 0.4,
                        ),
                        (state.downloads.isNotEmpty)
                            ? DownloadsImageWidget(
                                imageList:
                                    '$imageAppendUrl${state.downloads[0].posterPath}',
                                margin: const EdgeInsets.only(
                                  left: 140.0,
                                  bottom: 20,
                                ),
                                angle: 20,
                                size: Size(
                                  screenWidth.width * 0.4,
                                  screenWidth.width * 0.60,
                                ),
                              )
                            : const CircularProgressIndicator(),
                        (state.downloads.isNotEmpty)
                            ? DownloadsImageWidget(
                                imageList:
                                    '$imageAppendUrl${state.downloads[1].posterPath}',
                                margin: const EdgeInsets.only(
                                  right: 140.0,
                                  bottom: 20,
                                ),
                                angle: -20,
                                size: Size(
                                  screenWidth.width * 0.4,
                                  screenWidth.width * 0.60,
                                ),
                              )
                            : const CircularProgressIndicator(),
                        (state.downloads.isNotEmpty)
                            ? DownloadsImageWidget(
                                imageList:
                                    '$imageAppendUrl${state.downloads[2].posterPath}',
                                margin: const EdgeInsets.only(
                                  top: 20.0,
                                ),
                                size: Size(
                                  screenWidth.width * 0.4,
                                  screenWidth.width * 0.65,
                                ),
                              )
                            : const CircularProgressIndicator(),
                      ],
                    ),
            );
          },
        ),
      ],
    );
  }
}
