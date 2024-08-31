// ignore_for_file: prefer__ructors

import 'package:flutter/material.dart';
import 'package:spot__ui/components/artiste_circle.dart';

import '../widgets/album_card.dart';
import '../widgets/row_album_card.dart';
import '../widgets/song_card.dart';
import 'album_view.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * .5,
          decoration: BoxDecoration(
            color: Color(0xFF1C7A74),
          ),
        ),
        SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0),
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(1),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 40),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recently played",
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                          Row(
                            children: [
                              Icon(Icons.history),
                              SizedBox(width: 20),
                              Icon(Icons.settings),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          AlbumCard(
                            label: 'Best Mode',
                            image: AssetImage("assets/album7.jpg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: 'Motivation Mix',
                            image: AssetImage("assets/album2.jpg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: 'Top 50 global',
                            image: AssetImage("assets/top50.jpg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: 'Power Gaming',
                            image: AssetImage("assets/album1.jpg"),
                          ),
                          SizedBox(width: 16),
                          AlbumCard(
                            label: 'Top songs-global',
                            image: AssetImage("assets/album9.jpg"),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 32),
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            "Good Vibes",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              RowAlbumCard(
                                label: "Top 50 - Global",
                                image: AssetImage("assets/top50.jpg"),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: "Best Mode",
                                image: AssetImage("assets/album1.jpg"),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              RowAlbumCard(
                                label: "Rap Caviar",
                                image: AssetImage("assets/album2.jpg"),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: "Eminem",
                                image: AssetImage("assets/album5.jpg"),
                              ),
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              RowAlbumCard(
                                label: "Top 5 - USA",
                                image: AssetImage("assets/album9.jpg"),
                              ),
                              SizedBox(width: 16),
                              RowAlbumCard(
                                label: "Pop Remix",
                                image: AssetImage("assets/album10.jpg"),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0 * 2),
                          child: Text(
                            "Recents",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              SongCard(
                                image: AssetImage("assets/album2.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album6.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album9.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album4.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album5.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album1.jpg"),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0 * 2),
                          child: Text(
                            "Recommended",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              SongCard(
                                image: AssetImage("assets/album8.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album5.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album6.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album1.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album3.jpg"),
                              ),
                              SizedBox(width: 16),
                              SongCard(
                                image: AssetImage("assets/album10.jpg"),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0 * 2),
                          child: Text(
                            "Your Favorites Artists",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ArtisteCircle(
                                image: AssetImage("assets/abm23.jpg"),
                                color: Color.fromARGB(255, 22, 16, 3),
                                dimensions: 100,
                              ),
                              SizedBox(width: 16),
                              ArtisteCircle(
                                image: AssetImage("assets/ni.jpg"),
                                color: Color.fromARGB(255, 75, 53, 3),
                                dimensions: 100,
                              ),
                              SizedBox(width: 16),
                              ArtisteCircle(
                                image: AssetImage("assets/profil_aya.jpg.png"),
                                color: Color.fromARGB(255, 189, 44, 44),
                                dimensions: 100,
                              ),
                              SizedBox(width: 16),
                              ArtisteCircle(
                                image: AssetImage("assets/profil_cardi.jpeg"),
                                color: Color.fromARGB(255, 44, 150, 189),
                                dimensions: 100,
                              ),
                              SizedBox(width: 16),
                              ArtisteCircle(
                                image: AssetImage("assets/profil_nicki.jpeg"),
                                color: Color.fromARGB(255, 189, 44, 165),
                                dimensions: 100,
                              ),
                              SizedBox(width: 16),
                              ArtisteCircle(
                                image: AssetImage("assets/profil_ice.jpeg"),
                                color: Color.fromARGB(255, 229, 218, 192),
                                dimensions: 100,
                              ),
                              SizedBox(width: 16),
                              ArtisteCircle(
                                image: AssetImage("assets/profil_doja.jpeg"),
                                color: Color.fromARGB(255, 13, 13, 7),
                                dimensions: 100,
                              ),
                              SizedBox(width: 16),
                              ArtisteCircle(
                                image: AssetImage("assets/profil_damso.jpeg"),
                                color: Color.fromARGB(168, 28, 18, 1),
                                dimensions: 100,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 18),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
