// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import '../components/album_card.dart';

class AlbumView extends StatefulWidget {
  AlbumView({super.key});

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  ScrollController? scrollController;
  double imageSize = 0;
  double initialSize = 240;
  double containerHeight = 500;
  double containerInitialHeight = 500;
  double imageOpacity = 1;
  bool showTopBar = false;
  final /*ImageProvider */ image;

  _AlbumViewState({this.image});
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
            color: Colors.pink,
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
                          offset: const Offset(0, 20),
                          blurRadius: 32,
                          spreadRadius: 16,
                        ),
                      ],
                    ),
                    child: Image(
                      image: const AssetImage("assets/album4.jpg"),
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
                            padding: const EdgeInsets.all(8.0 * 2),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  style: Theme.of(context).textTheme.bodySmall,
                                  'Consequat aliquip dolor consectetur sit veniam. Consectetur ipsum qui nostrud pariatur tempor minim dolor nisi elit elit in est',
                                ),
                                const SizedBox(height: 18),
                                Row(
                                  children: [
                                    Image(
                                      image: image,
                                      width: 32,
                                      height: 32,
                                    ),
                                    SizedBox(width: 08),
                                    Text("Spotify"),
                                  ],
                                ),
                                const SizedBox(height: 16),
                                const Text(
                                  style: TextStyle(fontSize: 15),
                                  "1.888.132 Likes 5h 3m",
                                ),
                                const SizedBox(height: 16),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    const Row(
                                      children: [
                                        Icon(Icons.favorite),
                                        SizedBox(width: 16),
                                        Icon(Icons.more_horiz)
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
                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "Laborum commodo irure nostrud Lorem ipsum. Aute deserunt irure excepteur duis quis est labore cillum aliqua do esse tempor exercitation aliquip. Nulla qui esse aliqua non cupidatat. Cupidatat dolor ullamco ."),
                        SizedBox(height: 32),
                        Text(
                          "You might also like",
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AlbumCard(
                                size: cardSize,
                                label: "Get Turnt",
                                image: AssetImage("assets/album3.jpg"),
                                onTap: () {},
                              ),
                              AlbumCard(
                                size: cardSize,
                                label: "Get Turnt",
                                image: AssetImage("assets/album5.jpg"),
                                onTap: () {},
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AlbumCard(
                                size: cardSize,
                                label: "Get Turnt",
                                image: AssetImage("assets/album6.jpg"),
                                onTap: () {},
                              ),
                              AlbumCard(
                                size: cardSize,
                                label: "Get Turnt",
                                image: AssetImage("assets/album9.jpg"),
                                onTap: () {},
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AlbumCard(
                                size: cardSize,
                                label: "Get Turnt",
                                image: AssetImage("assets/album10.jpg"),
                                onTap: () {},
                              ),
                              AlbumCard(
                                size: cardSize,
                                label: "Get Turnt",
                                image: AssetImage("assets/album4.jpg"),
                                onTap: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // appbar
          Positioned(
            child: Container(
              child: AnimatedContainer(
                duration: Duration(milliseconds: 250),
                color: showTopBar
                    ? Color(0xFFC61855).withOpacity(1)
                    : Color(0xFFC61855).withOpacity(0),
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
                          // top: 8,
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
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFF14D860),
                                ),
                                child: const Icon(
                                  Icons.play_arrow_sharp,
                                  size: 38,
                                ),
                              ),
                              Container(
                                width: 24,
                                height: 24,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: const Icon(
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
}
