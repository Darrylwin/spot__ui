// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Post extends StatelessWidget {
  final Color color;

  Post({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(23),
          child: Container(
            decoration: BoxDecoration(
              color: color,
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
                      "assets/abm14.jpg",
                      // width: MediaQuery.of(context).size.width / 2,
                      // height: MediaQuery.of(context).size.width / 2,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            "assets/abm18.jpg",
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
                                color: const Color.fromARGB(255, 165, 163, 163),
                                fontSize: 13.7,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.add_circle_outline, size: 30),
                  ],
                ),
                // Stack(
                //   children: [
                //     Positioned(
                //       top: 10,
                //       left: 20,
                //       child: Container(
                //         width: 100,
                //         height: 50,
                //         color: Colors.blue,
                //         child: Column(
                //             // ... vos éléments de colonne
                //             ),
                //       ),
                //     ),
                //     // ... autres éléments
                //   ],
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
