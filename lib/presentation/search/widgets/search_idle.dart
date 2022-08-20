import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_bloc/application/search/search_bloc.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/core/constants/strings.dart';
import 'package:netflix_bloc/presentation/search/widgets/search_text_widget.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        const SearchTextWidget(
          title: 'Top Searches',
        ),
        Expanded(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const Center(
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: kNetflixRed,
                  ),
                );
              } else if (state.isError) {
                return const Center(
                  child: Text('Error while fetching data'),
                );
              } else if (state.idleList.isEmpty) {
                return const Center(
                  child: Text('List is empty'),
                );
              }
              return ListView.separated(
                //shrinkWrap: true,
                itemBuilder: ((context, index) {
                  final showTitle =
                      state.idleList[index].title ?? state.idleList[index].name;
                  final showImg =
                      '$imageAppendUrl${state.idleList[index].backDropPath}';

                  return TopSearchTileWidget(
                      title: showTitle ?? 'No title available',
                      imgUrl: showImg);
                }),
                separatorBuilder: ((context, index) => const SizedBox(
                      height: 15.0,
                    )),
                itemCount: state.idleList.length,
              );
            },
          ),
        ),
      ],
    );
  }
}

class TopSearchTileWidget extends StatelessWidget {
  final String title;
  final String imgUrl;
  const TopSearchTileWidget(
      {required this.title, required this.imgUrl, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size;
    return Row(
      children: [
        Container(
          width: screenWidth.width * 0.35,
          height: 80.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imgUrl,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        const Icon(
          CupertinoIcons.play_circle_fill,
          color: kWhiteColor,
          size: 45.0,
        )
      ],
    );
  }
}
