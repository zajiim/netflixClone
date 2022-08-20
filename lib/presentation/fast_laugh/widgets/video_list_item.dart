import 'package:flutter/material.dart';
import 'package:netflix_bloc/application/fast_laugh/fast_laugh_bloc.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/core/constants/strings.dart';
import 'package:netflix_bloc/domain/downloads/models/downloads.dart';
import 'package:netflix_bloc/presentation/fast_laugh/widgets/video_menu_items.dart';
import 'package:video_player/video_player.dart';

class VideoListItemInheritedWidget extends InheritedWidget {
  final Widget childWidget;
  final Downloads videoData;

  const VideoListItemInheritedWidget(
      {Key? key, required this.childWidget, required this.videoData})
      : super(key: key, child: childWidget);

  @override
  bool updateShouldNotify(covariant VideoListItemInheritedWidget oldWidget) {
    return oldWidget.videoData != videoData;
  }

  static VideoListItemInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListItemInheritedWidget>();
  }
}

class VideoListItem extends StatelessWidget {
  final int index;

  const VideoListItem({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imgUrl =
        VideoListItemInheritedWidget.of(context)?.videoData.posterPath;
    final videoUrl = videoUrls[index % videoUrls.length];

    return Stack(
      children: [
        FastLaughVideoPlayerWidget(
          onStateChanged: (_) {},
          videoUrl: videoUrl,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: imgUrl == null
                            ? null
                            : NetworkImage('$imageAppendUrl$imgUrl'),
                      ),
                    ),
                    const VideoMenuItems(
                      menuIcon: Icons.emoji_emotions,
                      menuTitle: 'LOL',
                    ),
                    const VideoMenuItems(
                      menuIcon: Icons.add,
                      menuTitle: 'My List',
                    ),
                    const VideoMenuItems(
                      menuIcon: Icons.send,
                      menuTitle: 'Share',
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

class FastLaughVideoPlayerWidget extends StatefulWidget {
  final String videoUrl;
  final void Function(bool isPlaying) onStateChanged;
  const FastLaughVideoPlayerWidget({
    Key? key,
    required this.videoUrl,
    required this.onStateChanged,
  }) : super(key: key);

  @override
  State<FastLaughVideoPlayerWidget> createState() =>
      _FastLaughVideoPlayerWidgetState();
}

class _FastLaughVideoPlayerWidgetState
    extends State<FastLaughVideoPlayerWidget> {
  late VideoPlayerController _videoPlayerController;
  bool isClicked = false;
  bool isMuted = false;
  @override
  void initState() {
    _videoPlayerController = VideoPlayerController.network(widget.videoUrl);
    _videoPlayerController.initialize().then((value) {
      setState(() {
        _videoPlayerController.play();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: _videoPlayerController.value.isInitialized
            ? AspectRatio(
                aspectRatio: _videoPlayerController.value.aspectRatio,
                child: VideoPlayer(_videoPlayerController))
            : const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: kNetflixRed,
                ),
              ),
      ),
      Positioned(
        left: 0,
        right: 0,
        top: 0,
        bottom: 0,
        child: AnimatedOpacity(
          opacity: isClicked ? 0.0 : 1.0,
          duration: const Duration(seconds: 2),
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (_videoPlayerController.value.isPlaying) {
                  _videoPlayerController.pause();
                } else {
                  _videoPlayerController.play();
                }
              });
            },
            child: (_videoPlayerController.value.isPlaying)
                ? const Icon(
                    Icons.pause,
                    size: 50,
                    color: kWhiteColor,
                  )
                : const Icon(
                    Icons.play_arrow,
                    size: 50,
                    color: kWhiteColor,
                  ),
          ),
        ),
      ),
      Positioned(
        left: 15,
        bottom: 25,
        child: GestureDetector(
          onTap: () {
            isMuted = !isMuted;
            setState(() {
              if (isMuted) {
                _videoPlayerController.setVolume(0);
              } else {
                _videoPlayerController.setVolume(100);
              }
            });
          },
          child: (isMuted)
              ? const Icon(
                  Icons.volume_off,
                  size: 40,
                  color: kWhiteColor,
                )
              : const Icon(
                  Icons.volume_up,
                  size: 40,
                  color: kWhiteColor,
                ),
        ),
      ),
    ]);
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    super.dispose();
  }
}
