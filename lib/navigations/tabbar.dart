import 'package:flutter/material.dart';
import 'package:spot__ui/views/home.dart';
import 'package:spot__ui/views/library.dart';
import 'package:spot__ui/views/profile.dart';
import 'package:spot__ui/views/search.dart';

class Tabbar extends StatefulWidget {
  Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: 
            BottomNavigationBar(
              onTap: (index) {
                setState(() {
                  _selectedTab = index;
                });
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search_outlined), label: 'Search'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.library_music), label: 'Library'),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
              ],
            ),
      body: Stack(
        children: [
          renderView(
            0,
            HomeView(),
          ),
          renderView(
            1,
            SearchView(),
          ),
          renderView(
            2,
            LibraryView(),
          ),
          renderView(
            3,
            ProfileView(),
          ),
        ],
      ),
    );
  }

  Widget renderView(int tabIndex, Widgetview) {
    return IgnorePointer(
      ignoring: _selectedTab != tabIndex,
      child: Opacity(
        opacity: _selectedTab == tabIndex ? 1 : 0,
        child: Widgetview,
      ),
    );
  }
}
