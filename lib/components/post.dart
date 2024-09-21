// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables, sort_child_properties_last

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
    const Color.fromARGB(255, 98, 11, 40),
    const Color.fromARGB(255, 19, 56, 47),
    const Color.fromARGB(255, 80, 62, 11),
    const Color.fromARGB(255, 63, 7, 7),
    const Color.fromARGB(255, 65, 71, 9),
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
                SizedBox(height: MediaQuery.of(context).size.height / 5),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.6,
                      height: MediaQuery.of(context).size.width / 5,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(imagePaths.last),
                        ),
                      ),
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
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "#French music",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "#Afro beat",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 18),
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
                        Badge(
                          backgroundColor: Colors.white,
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/liked.jpg"),
                              ),
                            ),
                          ),
                          label: Icon(
                            Icons.add,
                            size: 12,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "2.3M",
                          style: TextStyle(fontSize: 13),
                        ),
                        const SizedBox(height: 25),
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
                // Positioned(
                //   top: 0,
                //   bottom: 0,
                //   left: 0,
                //   right: 0,
                //   child: Container(
                //     height: 50,
                //     width: 50,
                //     decoration: BoxDecoration(
                //       color: const Color.fromARGB(255, 68, 19, 19),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
