// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final List<String> imagePaths = [
    "assets/abm26.jpg",
    "assets/abm25.jpg",
    "assets/abm22.jpg",
    "assets/abm23.jpg",
    "assets/abm21.jpg",
    "assets/abm17.jpg",
    "assets/abm16.jpg",
    "assets/abm18.jpg",
    "assets/album1.jpg",
    "assets/album4.jpg",
    "assets/album7.jpg",
    "assets/album8.jpg",
    "assets/album9.jpg",
    "assets/album10.jpg",
    "assets/album11.jpg",
    "assets/album13.jpg",
  ];

  final List<Color> colors = [
    const Color.fromARGB(255, 67, 8, 78),
    const Color.fromARGB(255, 9, 62, 11),
    const Color.fromARGB(255, 143, 38, 6),
    const Color.fromARGB(255, 8, 56, 62),
    const Color.fromARGB(255, 156, 29, 71),
    const Color.fromARGB(255, 19, 56, 47),
    const Color.fromARGB(255, 107, 85, 19),
    const Color.fromARGB(255, 63, 7, 7),
    const Color.fromARGB(255, 112, 123, 11),
    const Color.fromARGB(255, 11, 102, 81),
    const Color.fromARGB(255, 4, 26, 150),
    const Color.fromARGB(255, 85, 65, 65),
    const Color.fromARGB(255, 4, 75, 86),
    const Color.fromARGB(255, 37, 3, 53),
    const Color.fromARGB(255, 8, 19, 82),
    const Color.fromARGB(255, 51, 31, 4),
  ];

  Post({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    imagePaths.shuffle();
    colors.shuffle();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(23),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: colors.first,
              image: DecorationImage(
                image: AssetImage("assets/waves.png"),
                fit: BoxFit.fitWidth,
              ),
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                    Text(
                      "#Afro R&B",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width / 5.5)
                  ],
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    height: MediaQuery.of(context).size.width / 2,
                    child: Image.asset(
                      imagePaths.last,
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "#Pop music",
                            ),
                            Text(
                              "#French music",
                            ),
                            Text(
                              "#Afro beat",
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                imagePaths.last,
                                height: 55,
                                width: 55,
                              ),
                            ),
                            SizedBox(width: 18),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "DODO",
                                  style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'TAYC',
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                        255, 165, 163, 163),
                                    fontSize: 13.7,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Badge(),
                        Icon(Icons.volume_up, size: 30),
                        const SizedBox(height: 25),
                        Icon(Icons.share, size: 30),
                        const SizedBox(height: 25),
                        Icon(Icons.more_horiz, size: 30),
                        const SizedBox(height: 25),
                        Icon(Icons.add_circle_outline, size: 35),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15.5),
                Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
