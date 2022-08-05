import 'package:flutter/material.dart';

import 'package:netflix_bloc/presentation/common_widgets/title_bar.dart';
import 'package:netflix_bloc/presentation/downloads/widgets/button_section.dart';
import 'package:netflix_bloc/presentation/downloads/widgets/middle_section.dart';
import 'package:netflix_bloc/presentation/downloads/widgets/smart_downloads_widget.dart';

class DownloadsScreen extends StatelessWidget {
  DownloadsScreen({Key? key}) : super(key: key);

  final _widgetList = [
    const SmartDownloads(),
    const MiddleSection(),
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
