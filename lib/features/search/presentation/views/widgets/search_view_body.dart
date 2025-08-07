import 'package:flutter/material.dart';
import 'package:movista_app/shared/movie_card.dart';
import 'package:super_cupertino_navigation_bar/super_cupertino_navigation_bar.dart';
import 'package:movista_app/features/home/presentation/views/widgets/custom_app_bar.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SuperScaffold(
      appBar: customAppBar(title: 'Search'),
      // ...existing code...
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [MovieCard(), MovieCard(), MovieCard()]),
        ),
      ),

      // ...existing code...
    );
  }
}
