import 'package:flutter/material.dart';
import '../components/browse_card.dart';
import '../components/genre_card.dart';

class SearchView extends StatefulWidget {
  SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  List<GenreCard> genre = [];

  void _getGenres() {
    genre = GenreCard.getGenres();
  }

  @override
  void initState() {
    _getGenres();
    // super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _getGenres();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                        SizedBox(width: 10),
                        Text(
                          "Search",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Icon(Icons.camera_alt_outlined, size: 30, weight: 40)
                  ],
                ),
                SizedBox(height: 40),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  // textfield
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      prefixIcon: Padding(
                        padding: const EdgeInsetsDirectional.all(6.0),
                        child: Icon(Icons.search_rounded,
                            size: 35, color: Color.fromARGB(255, 21, 19, 19)),
                      ),
                      hintText: 'What should you listen to ?',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(230, 87, 85, 85),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30),

                //genre section

                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Explore your genres",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 240,
                            decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(18),
                                ),
                            child: ListView.separated(
                              padding: EdgeInsets.all(2),
                              itemBuilder: (context, index) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Container(
                                    width: 125,
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          genre[index].bgImage,
                                          fit: BoxFit.cover,
                                        ),
                                        Positioned(
                                          bottom: 10,
                                          child: Text(
                                            genre[index].text,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              separatorBuilder: (context, index) => SizedBox(
                                width: 20,
                              ),
                              itemCount: genre.length,
                              scrollDirection: Axis.horizontal,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 18),

                      //browse section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Browse all",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BrowseCard(
                            text: "Music",
                            boxColor: const Color.fromARGB(255, 158, 19, 66),
                            imagePath: "assets/album1.jpg",
                          ),
                          BrowseCard(
                            text: "Podcasts",
                            boxColor: Color.fromARGB(72, 36, 133, 99),
                            imagePath: "assets/album2.jpg",
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BrowseCard(
                            text: "Live\nEvents",
                            boxColor: Color.fromARGB(255, 84, 11, 113),
                            imagePath: "assets/album3.jpg",
                          ),
                          BrowseCard(
                            text: "Made\nfor you",
                            boxColor: Color.fromARGB(255, 14, 43, 124),
                            imagePath: "assets/album4.jpg",
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BrowseCard(
                            text: "New Gen",
                            boxColor: Color.fromARGB(255, 140, 45, 4),
                            imagePath: "assets/album5.jpg",
                          ),
                          BrowseCard(
                            text: "Afro",
                            boxColor: Color.fromARGB(255, 136, 5, 5),
                            imagePath: "assets/album6.jpg",
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BrowseCard(
                            text: "Pop",
                            boxColor: Color.fromARGB(255, 19, 91, 158),
                            imagePath: "assets/album7.jpg",
                          ),
                          BrowseCard(
                            text: "Comedy",
                            boxColor: Color.fromARGB(121, 13, 87, 103),
                            imagePath: "assets/album8.jpg",
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BrowseCard(
                            text: "Discover",
                            boxColor: Color.fromARGB(98, 113, 86, 11),
                            imagePath: "assets/album9.jpg",
                          ),
                          BrowseCard(
                            text: "R&B",
                            boxColor: Color.fromARGB(255, 9, 85, 33),
                            imagePath: "assets/album10.jpg",
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BrowseCard(
                            text: "Party",
                            boxColor: Color.fromARGB(255, 49, 1, 1),
                            imagePath: "assets/album11.jpg",
                          ),
                          BrowseCard(
                            text: "Anime",
                            boxColor: Color.fromARGB(255, 89, 57, 16),
                            imagePath: "assets/album12.jpg",
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
      ),
    );
  }
}
