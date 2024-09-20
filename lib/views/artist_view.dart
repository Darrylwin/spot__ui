// ignore_for_file: prefer__ructors, prefer__literals_to_create_immutables, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, sort_child_properties_last
import 'package:flutter/material.dart';
import 'package:spot__ui/components/album_rectangle.dart';
import 'package:spot__ui/components/library_card.dart';
import '../components/artiste_circle.dart';
import '../models/play_model.dart';
import '../widgets/song_card.dart';

class ArtistView extends StatefulWidget {
  final ImageProvider image;
  final Color color;

  ArtistView({
    super.key,
    required this.image,
    required this.color,
  });

  @override
  State<ArtistView> createState() => _ArtistViewState();
}

class _ArtistViewState extends State<ArtistView> {
  ScrollController? scrollController;
  double imageSize = 0;
  double initialSize = 240;
  double containerHeight = 500;
  double containerInitialHeight = 500;
  double imageOpacity = 1;
  bool showTopBar = false;

  @override
  void initState() {
    imageSize = initialSize;
    scrollController = ScrollController()
      ..addListener(() {
        imageSize = initialSize - scrollController!.offset;
        if (imageSize < 0) {
          imageSize = 0;
        }
        containerHeight = containerInitialHeight - scrollController!.offset;
        if (containerHeight < 0) {
          containerHeight = 0;
        }
        imageOpacity = imageSize / initialSize;
        if (scrollController!.offset > 224) {
          showTopBar = true;
        } else {
          showTopBar = false;
        }
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cardSize = MediaQuery.of(context).size.width / 2 - 32;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: containerHeight,
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            color: widget.color,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: imageOpacity.clamp(0, 1.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(0, 20),
                          blurRadius: 32,
                          spreadRadius: 16,
                        ),
                      ],
                    ),
                    child: Image(
                      image: widget.image,
                      width: imageSize,
                      height: imageSize,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 100),
              ],
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              controller: scrollController,
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    clipBehavior: Clip.none,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(0),
                          Colors.black.withOpacity(1),
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 40),
                      child: Column(
                        children: [
                          SizedBox(height: initialSize + 32),
                          Padding(
                            padding: EdgeInsets.all(8.0 * 2),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Image(
                                      image: AssetImage("assets/logo.png"),
                                      width: 32,
                                      height: 32,
                                    ),
                                    SizedBox(width: 08),
                                    Text("Spotify"),
                                  ],
                                ),
                                SizedBox(height: 16),
                                Text(
                                  style: TextStyle(fontSize: 15),
                                  "1.888.132 Likes 5h 3m",
                                ),
                                SizedBox(height: 16),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Row(
                                      children: [
                                        // Icon(Icons.add_circle_outline_outlined),
                                        // SizedBox(width: 16),
                                        // Icon(Icons.arrow_circle_down),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(14),
                                          child: Container(
                                            child:
                                                Center(child: Text("Follow")),
                                            // margin: EdgeInsets.all(10),
                                            // padding: EdgeInsets.only(
                                            //     left: 18, right: 18),
                                            decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  255, 45, 43, 43),
                                            ),
                                            height: 30, width: 70,
                                          ),
                                        ),
                                        SizedBox(width: 16),
                                        Icon(Icons.more_vert),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // listof songs section
                  listOfSongsSection(context),
                ],
              ),
            ),
          ),
          Positioned(
            child: Container(
              child: AnimatedContainer(
                duration: Duration(milliseconds: 250),
                color: showTopBar
                    ? widget.color.withOpacity(1)
                    : widget.color.withOpacity(0),
                padding: EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 10,
                ),
                child: SafeArea(
                  child: Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          left: 0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.keyboard_arrow_left,
                              size: 38,
                            ),
                          ),
                        ),
                        AnimatedOpacity(
                          duration: Duration(milliseconds: 250),
                          opacity: showTopBar ? 1 : 0,
                          child: Text(
                            "Ophelia",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 80 -
                              containerHeight.clamp(120.0, double.infinity),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Container(
                                width: 64,
                                height: 64,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF14D860),
                                ),
                                child: Icon(
                                  Icons.play_arrow_sharp,
                                  size: 38,
                                ),
                              ),
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Icon(
                                  Icons.shuffle,
                                  size: 12,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container listOfSongsSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 18),
          PlayModel(
            imagePath: "assets/abm20.jpg",
            title: "Va va voum",
            subTitle: 'Nicki Minaj',
          ),
          PlayModel(
            imagePath: "assets/abm21.jpg",
            title: "Bodack Yellow",
            subTitle: 'Cardi B',
          ),
          PlayModel(
            imagePath: "assets/abm24.jpg",
            title: "SMS",
            subTitle: 'Aya Nakamura',
          ),
          PlayModel(
            imagePath: "assets/abm25.jpg",
            title: "Mami Wata",
            subTitle: 'Tiakola ft Gazo',
          ),
          PlayModel(
            imagePath: "assets/abm26.jpg",
            title: "Think U The Shit",
            subTitle: 'Ice Spie',
          ),
          PlayModel(
            imagePath: "assets/abm18.jpg",
            title: "Jefe",
            subTitle: 'Ninho',
          ),
          SizedBox(height: 23),
          Text(
            "Artist Pick",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 23),

          //artist pick section
          artistPickSection(context),
          SizedBox(height: 23),
          //popular releases section
          Text(
            "Popular Realeases",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 23),
          LibraryCard(
            bolledText: "On dat Money (With Cardi B)",
            content: AlbumRectangle(
              image: AssetImage("assets/abm17.jpg"),
              color: Colors.pink,
              dimensions: 89,
            ),
            message: "LatestRelease . Single",
          ),
          LibraryCard(
            bolledText: "Inversion Of (With Cardi B)",
            content: AlbumRectangle(
              image: AssetImage("assets/abm21.jpg"),
              color: Colors.blue.shade300,
              dimensions: 89,
            ),
            message: "LatestRelease . Single",
          ),
          SizedBox(height: 23),
          //About section
          Text(
            "About",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 23),
          aboutSection(context), SizedBox(height: 23),
          Text(
            "Artists Playlists",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 23),
          artistsPlaylistSection(),
          SizedBox(height: 23),
          Text(
            "Fans also like",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 23),
          fansLikesSection(),
          SizedBox(height: 18),
        ],
      ),
    );
  }

  SingleChildScrollView artistsPlaylistSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          SongCard(
            image: AssetImage("assets/album12.jpg"),
          ),
          SizedBox(width: 16),
          SongCard(
            image: AssetImage("assets/album13.jpg"),
          ),
          SizedBox(width: 16),
          SongCard(
            image: AssetImage("assets/abm14.jpg"),
          ),
          SizedBox(width: 16),
          SongCard(
            image: AssetImage("assets/abm15.jpg"),
          ),
          SizedBox(width: 16),
          SongCard(
            image: AssetImage("assets/abm16.jpg"),
          ),
          SizedBox(width: 16),
          SongCard(
            image: AssetImage("assets/abm17.jpg"),
          ),
          SizedBox(width: 16),
          SongCard(
            image: AssetImage("assets/abm18.jpg"),
          ),
        ],
      ),
    );
  }

  SingleChildScrollView fansLikesSection() {
    return SingleChildScrollView(
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
    );
  }

  Container artistPickSection(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: widget.image,
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(22),
              child: Container(
                padding: EdgeInsets.all(2.5),
                color: Colors.white,
                // width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: widget.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'ENOUGH!  MIAMI IS OUT NOW',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 5),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ListTile(
                  title: Text("Artist - Music name"),
                  subtitle: Text("Playlist"),
                  leading: Container(
                    height: 70,
                    width: 70,
                    child: Image(
                      image: AssetImage("assets/abm25.jpg"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container aboutSection(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 390,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: widget.image,
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // image: DecorationImage(
                    //   fit: BoxFit.cover,
                    //   image: AssetImage(
                    //     "assets/certified.png",
                    //   ),
                    // ),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      "assets/certified.png",
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  "Verified Artist",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: "29,091,598 ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "MONTHLY LISTENERS",
                        style: TextStyle(
                          color: Colors.grey.shade200,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 9),
                Text(
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  "Rapper and entertainer Cardi B draws from a seemingly never-ending supply of confidence, charisma, and ...",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
