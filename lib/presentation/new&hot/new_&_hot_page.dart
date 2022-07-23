import 'package:flutter/material.dart';
import 'package:netflix_bloc/presentation/common_widgets/title_bar.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          50.0,
        ),
        child: TitleBar(
          'New & Hot',
        ),
      ),
      body: Text('New & Hot'),
    );
  }
}
