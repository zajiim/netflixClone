import 'package:flutter/cupertino.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/presentation/search/widgets/search_text_widget.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/56v2KjBlU4XaOv9rVYEQypROD7P.jpg';

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
        SearchTextWidget(
          title: 'Top Searches',
        ),
        Expanded(
          child: ListView.separated(
            //shrinkWrap: true,
            itemBuilder: ((context, index) => const TopSearchTileWidget()),
            separatorBuilder: ((context, index) => const SizedBox(
                  height: 15.0,
                )),
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}

class TopSearchTileWidget extends StatelessWidget {
  const TopSearchTileWidget({Key? key}) : super(key: key);

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
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                imageUrl,
              ),
            ),
          ),
        ),
        const Expanded(
          child: Text(
            'Stranger Things',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
