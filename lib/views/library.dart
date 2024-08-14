import 'package:flutter/material.dart';

import '../components/filter.dart';
import '../components/library_card.dart';

class LibraryView extends StatefulWidget {
  LibraryView({super.key});

  @override
  State<LibraryView> createState() => _LibraryState();
}

class _LibraryState extends State<LibraryView> {
  List<LibraryCard> library = [];

  void _getLibraries() {
    library = LibraryCard.getLibraries();
  }

  @override
  void initState() {
    _getLibraries(); // super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _getLibraries();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        // search section
                        CircleAvatar(
                          radius: 23,
                          backgroundImage: AssetImage("assets/profil.jpeg"),
                        ),
                        SizedBox(width: 13),
                        Text(
                          "Your Library",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.search_sharp, size: 43, weight: 45),
                        SizedBox(width: 8),
                        Icon(Icons.add, size: 43, weight: 45),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 28),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Filter(text: 'Playlists'),
                      SizedBox(width: 10),
                      Filter(text: "Podcasts"),
                      SizedBox(width: 10),
                      Filter(text: "Albums"),
                      SizedBox(width: 10),
                      Filter(text: "Artists"),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.swap_vert_outlined),
                              SizedBox(width: 16),
                              Text(
                                "Recents",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                        Icon(Icons.grid_view_outlined),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          child: Image.asset("assets/album1.jpg"),
                        ),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Artist.',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Podcast',
                              style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 138, 136, 136),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )

                    // ListView.separated(
                    //   itemBuilder: (context, index) {


                    //   },
                    //   itemCount: library.length,
                    //   separatorBuilder: (context, index) => SizedBox(
                    //     height: 14,
                    //   ),
                    //   scrollDirection: Axis.vertical,
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
