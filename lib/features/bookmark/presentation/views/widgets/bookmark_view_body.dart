import 'package:flutter/material.dart';
import 'package:movista_app/shared/movie_card.dart';

class BookmarkViewBody extends StatelessWidget {
  const BookmarkViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            // Placeholder for the custom app bar
            AppBar(title: const Text('Bookmarks'), centerTitle: true),
            MovieCard(),
            MovieCard(),
            MovieCard(),
          ],
        ),
      ),
    );
  }
}
