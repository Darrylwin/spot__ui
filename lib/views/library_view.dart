// ignore_for_file: prefer__ructors, prefer__literals_to_create_immutables, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import '../widgets/album_card.dart';

class LibraryView extends StatefulWidget {
  final ImageProvider image;
  LibraryView({super.key, required this.image});

  @override
  State<LibraryView> createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView> {
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
            color: Color.fromARGB(255, 104, 44, 189),
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
                                // Text(
                                //   style: Theme.of(context).textTheme.bodySmall,
                                //   'Consequat aliquip dolor consectetur sit veniam. Consectetur ipsum qui nostrud pariatur tempor minim dolor nisi elit elit in est',
                                // ),
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
                                        Icon(Icons.add_circle_outline_outlined),
                                        SizedBox(width: 16),
                                        Icon(Icons.arrow_circle_down),
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
                  Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.black,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text(
                        //     "Laborum commodo irure nostrud Lorem ipsum. Aute deserunt irure excepteur duis quis est labore cillum aliqua do esse tempor exercitation aliquip. Nulla qui esse aliqua non cupidatat. Cupidatat dolor ullamco ."),
                        SizedBox(height: 18),
                        Text(
                          "You might also like",
                          style: Theme.of(context).textTheme.titleLarge,
                        ),

                        // Padding(
                        //   padding: EdgeInsets.symmetric(vertical: 16),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       AlbumCard(
                        //         size: cardSize,
                        //         label: "Get Turnt",
                        //         image: AssetImage("assets/album3.jpg"),
                        //       ),
                        //       AlbumCard(
                        //         size: cardSize,
                        //         label: "Get Turnt",
                        //         image: AssetImage("assets/album5.jpg"),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: EdgeInsets.symmetric(vertical: 16),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       AlbumCard(
                        //         size: cardSize,
                        //         label: "Get Turnt",
                        //         image: AssetImage("assets/album6.jpg"),
                        //       ),
                        //       AlbumCard(
                        //         size: cardSize,
                        //         label: "Get Turnt",
                        //         image: AssetImage("assets/album9.jpg"),

                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: EdgeInsets.symmetric(vertical: 16),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     children: [
                        //       AlbumCard(
                        //         size: cardSize,
                        //         label: "Get Turnt",
                        //         image: AssetImage("assets/album10.jpg"),

                        //       ),
                        //       AlbumCard(
                        //         size: cardSize,
                        //         label: "Get Turnt",
                        //         image: AssetImage("assets/album4.jpg"),

                        //       ),
                        //     ],
                        //   ),
                        // ),

                        ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return ListTile(
                              // shape: RoundedRectangleBorder(
                              //   borderRadius: BorderRadius.circular(18),
                              // ),
                              title: Text("Angel"),
                              subtitle: Text("Artist"),
                              leading: Container(
                                height: 85,
                                width: 85,
                                // decoration: BoxDecoration(
                                //   // shape: BoxShape.circle,
                                //   image: DecorationImage(
                                //     image: AssetImage("assets/abm14.jpg"),
                                //     fit: BoxFit.cover,
                                //   ),
                                // ),
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage("assets/abm14.jpg"),
                                ),
                              ),
                              trailing: Icon(Icons.more_vert),
                            );
                          },
                          itemCount: 20,
                          shrinkWrap: true,
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
                    ? Color.fromARGB(255, 104, 44, 189).withOpacity(1)
                    : Color.fromARGB(255, 104, 44, 189).withOpacity(0),
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
}
