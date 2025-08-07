import 'package:flutter/material.dart';
import 'package:movista_app/features/search/presentation/views/search_view.dart';
import 'package:movista_app/features/bookmark/presentation/views/bookmark_view.dart';
import 'package:movista_app/features/home/presentation/views/widgets/customBottomBar.dart';
import 'package:movista_app/features/home/presentation/views/widgets/home_view_body_deep.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [];
  @override
  void initState() {
    super.initState();
    _pages.addAll([
      const HomeViewBodyDeep(),
      const SearchView(),
      const BookmarkView(),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _pages[_selectedIndex],
    );
  }
}
