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
                                    child: Image.asset(
                                      genre[index].bgImage,
                                      fit: BoxFit.cover,
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
                          BrowseCard(),
                          BrowseCard(),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BrowseCard(),
                          BrowseCard(),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BrowseCard(),
                          BrowseCard(),
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
