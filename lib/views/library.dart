import 'package:flutter/material.dart';

import '../components/album_rectangle.dart';
import '../components/artiste_circle.dart';
import '../widgets/filter.dart';
import '../components/library_card.dart';
import '../widgets/recents_row.dart';

class LibraryView extends StatefulWidget {
  LibraryView({super.key});

  @override
  State<LibraryView> createState() => _LibraryState();
}

class _LibraryState extends State<LibraryView> {
  // List<LibraryCard> library = [];

  // void _getLibraries() {
  //   library = LibraryCard.getLibraries();
  // }

  // @override
  // void initState() {
  //   _getLibraries(); // super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    // _getLibraries();
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
                filterSection(),
                Column(
                  children: [
                    SizedBox(height: 20),
                    RecentsRow(),
                    // Column(
                    //   children: [
                    //     // ListView.separated(
                    //     //   itemBuilder: librarySection,
                    //     //   itemCount: library.length,
                    //     //   separatorBuilder: (context, index) => SizedBox(
                    //     //     height: 14,
                    //     //   ),
                    //     //   scrollDirection: Axis.vertical,
                    //     // ),
                    //   ],
                    // ),
                    SizedBox(height: 16),
                    Column(
                      children: [
                        LibraryCard(
                          bolledText: 'Liked Songs',
                          message: 'Playlist . 400 Songs',
                          content: AlbumRectangle(
                            imagePath: "assets/liked.jpg",
                          ),
                        ),
                        LibraryCard(
                          bolledText: 'Doja Cat',
                          message: 'Artist',
                          content: ArtisteCircle(
                            imagePath: "assets/abm14.jpg",
                          ),
                        ),
                        LibraryCard(
                          bolledText: 'Your Episodes',
                          message: 'Saved & downloaded episodes',
                          content: AlbumRectangle(
                            imagePath: "assets/abm19.jpg",
                          ),
                        ),
                        LibraryCard(
                          bolledText: 'On repeat',
                          message: 'Playlist . Made for You',
                          content: AlbumRectangle(
                            imagePath: "assets/on_repeat.jpg",
                          ),
                        ),
                        LibraryCard(
                          bolledText: "Aya Nakamura",
                          message: 'Artist',
                          content: ArtisteCircle(
                            imagePath: "assets/abm24.jpg",
                          ),
                        ),
                        LibraryCard(
                          bolledText: 'Ni (Extension)',
                          message: 'Album . Ninho',
                          content: AlbumRectangle(
                            imagePath: "assets/ni.jpg",
                          ),
                        ),
                        LibraryCard(
                          bolledText: 'This is Gims',
                          message: 'Playlist',
                          content: AlbumRectangle(
                            imagePath: "assets/this_gims.jpg",
                          ),
                        ),
                        LibraryCard(
                          bolledText: 'Daily Mix 5',
                          message: 'Playlist . Made for you',
                          content: AlbumRectangle(
                            imagePath: "assets/mix5.png",
                          ),
                        ),
                        LibraryCard(
                          bolledText: 'Damso',
                          message: 'Artist',
                          content: ArtisteCircle(
                            imagePath: "assets/profil_damso.jpeg",
                          ),
                        ),
                        LibraryCard(
                          bolledText: 'Cardi b',
                          message: 'Artist',
                          content: ArtisteCircle(
                            imagePath: "assets/abm17.jpg",
                          ),
                        ),
                        LibraryCard(
                          bolledText: 'Imen es Radio',
                          message: 'Playlist . Made for you',
                          content: AlbumRectangle(
                            imagePath: "assets/top_imen.jpeg",
                          ),
                        ),
                        LibraryCard(
                          bolledText: 'This is Ice Spice',
                          message: 'Playlist . Spotify',
                          content: AlbumRectangle(
                            imagePath: "assets/top_ice.jpg",
                          ),
                        ),
                        LibraryCard(
                          bolledText: 'West New Twist',
                          message: 'Playlist . Spotify',
                          content: AlbumRectangle(
                            imagePath: "assets/abm26.jpg",
                          ),
                        ),
                        LibraryCard(
                          bolledText: 'Tiakola',
                          message: 'Artist',
                          content: ArtisteCircle(
                            imagePath: "assets/profil_tiakola.jpeg",
                          ),
                        ),
                        LibraryCard(
                          bolledText: 'Jefe',
                          message: 'Album . Ninho',
                          content: AlbumRectangle(
                            imagePath: "assets/abm18.jpg",
                          ),
                        ),
                        LibraryCard(
                          bolledText: 'Ayra Starr',
                          message: 'Artist',
                          content: ArtisteCircle(
                            imagePath: "assets/profil_ayra.jpeg",
                          ),
                        ),
                        LibraryCard(
                          bolledText: 'Ice Spice',
                          message: 'Artist',
                          content: ArtisteCircle(
                            imagePath: "assets/profil_ice.jpeg",
                          ),
                        ),
                        LibraryCard(
                            bolledText: "This is Ninho",
                            message: "Made for you",
                            content: AlbumRectangle(
                              imagePath: "assets/this_ninho.jpg",
                            )),
                        LibraryCard(
                          bolledText: 'Add Artist',
                          message: 'Artist',
                          content: ArtisteCircle(imagePath: "assets/plus.png"),
                        ),
                        LibraryCard(
                          bolledText: 'Add Podcast',
                          message: 'Artist',
                          content: AlbumRectangle(imagePath: "assets/plus.png"),
                        ),
                        SizedBox(height: 18),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget? librarySection(context, index) {
  //   ///////////////
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.start,
  //     children: [
  //       Container(
  //         height: 100,
  //         width: 100,
  //         child: Image.asset(
  //           library[index].imagePath,
  //         ),
  //       ),
  //       SizedBox(width: 16),
  //       Column(
  //         // crossAxisAlignment: CrossAxisAlignment.start,
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Text(
  //             library[index].bolledText,
  //             style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
  //           ),
  //           SizedBox(height: 8),
  //           Text(
  //             library[index].message,
  //             style: TextStyle(
  //               fontSize: 18,
  //               color: Color.fromARGB(255, 138, 136, 136),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ],
  //   );
  // }

  // methode qui retourne la section des filtres
  SingleChildScrollView filterSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
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
    );
  }
}
