// ignore_for_file: prefer_const_literals_to_create_immutables

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

  @override
  Widget build(BuildContext context) {
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
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.search_sharp, size: 38, weight: 45),
                        SizedBox(width: 8),
                        Icon(Icons.add, size: 38, weight: 45),
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
                    SizedBox(height: 16),
                    Column(
                      children: [
                        LibraryCard(
                          bolledText: 'Liked Songs',
                          message: 'Playlist . 400 Songs',
                          content: AlbumRectangle(
                            image: AssetImage("assets/liked.jpg"),
                            color: Color.fromARGB(255, 104, 44, 189),
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
                            image: AssetImage("assets/abm19.jpg"),
                            color: Color.fromARGB(255, 12, 47, 4),
                          ),
                        ),
                        LibraryCard(
                          bolledText: 'On repeat',
                          message: 'Playlist . Made for You',
                          content: AlbumRectangle(
                            image: AssetImage("assets/on_repeat.jpg"),
                            color: Color.fromARGB(255, 89, 35, 165),
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
                            image: AssetImage("assets/ni.jpg"),
                            color: Color.fromARGB(255, 152, 85, 9),
                          ),
                        ),
                        LibraryCard(
                          bolledText: 'This is Gims',
                          message: 'Playlist',
                          content: AlbumRectangle(
                            image: AssetImage("assets/this_gims.jpg"),
                            color: Color.fromARGB(212, 200, 196, 205),
                          ),
                        ),
                        LibraryCard(
                          bolledText: 'Daily Mix 5',
                          message: 'Playlist . Made for you',
                          content: AlbumRectangle(
                            image: AssetImage("assets/mix5.png"),
                            color: Color.fromARGB(255, 181, 182, 171),
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
                            image: AssetImage("assets/top_imen.jpeg"),
                            color: Color.fromARGB(255, 248, 247, 249),
                          ),
                        ),
                        LibraryCard(
                          bolledText: 'This is Ice Spice',
                          message: 'Playlist . Spotify',
                          content: AlbumRectangle(
                            image: AssetImage("assets/top_ice.jpg"),
                            color: Color.fromARGB(255, 237, 236, 239),
                          ),
                        ),
                        LibraryCard(
                          bolledText: 'West New Twist',
                          message: 'Playlist . Spotify',
                          content: AlbumRectangle(
                            image: AssetImage("assets/abm26.jpg"),
                            color: Color.fromARGB(255, 119, 167, 195),
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
                            image: AssetImage("assets/abm18.jpg"),
                            color: Color.fromARGB(176, 121, 101, 200),
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
                              image: AssetImage("assets/this_ninho.jpg"),
                              color: Color.fromARGB(255, 103, 72, 10),
                            )),
                        LibraryCard(
                          bolledText: 'Add Artist',
                          message: 'Artist',
                          content: ArtisteCircle(imagePath: "assets/plus.png"),
                        ),
                        LibraryCard(
                          bolledText: 'Add Podcast',
                          message: 'Artist',
                          content: AlbumRectangle(
                            image: AssetImage("assets/plus.png"),
                            color: Colors.black,
                          ),
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
          SizedBox(width: 10),
          Filter(text: "Musics"),
          SizedBox(width: 10),
          Filter(text: "Prods"),
        ],
      ),
    );
  }
}
