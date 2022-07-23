import 'package:flutter/material.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/w533_and_h300_bestv2/56v2KjBlU4XaOv9rVYEQypROD7P.jpg';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Column(
      children: [
        SizedBox(
          height: 10,
        ),
        const Text(
          'Top Searches',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ));
  }
}
