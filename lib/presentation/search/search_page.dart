import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_bloc/application/search/search_bloc.dart';
import 'package:netflix_bloc/core/colors/colors.dart';
import 'package:netflix_bloc/presentation/search/widgets/search_idle.dart';
import 'package:netflix_bloc/presentation/search/widgets/search_results.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<SearchBloc>(context).add(const Initialize());
    });
    // BlocProvider.of<SearchBloc>(context).add(const Initialize());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CupertinoSearchTextField(
                backgroundColor: kGreyColor.withOpacity(0.3),
                prefixIcon: const Icon(
                  CupertinoIcons.search,
                  color: kWhiteColor,
                ),
                suffixIcon: const Icon(
                  CupertinoIcons.xmark_circle_fill,
                  color: kWhiteColor,
                ),
                style: const TextStyle(
                  color: kWhiteColor,
                ),
                onChanged: (value) {
                  BlocProvider.of<SearchBloc>(context).add( TvShowQuery(tvShowQuery: value));
                },
              ),
              //Expanded(child: SearchIdleWidget()),
              const Expanded(child: SearchIdleWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
