
import 'package:flutter/material.dart';
import 'package:netflix_bloc/core/colors/colors.dart';

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