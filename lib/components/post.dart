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
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
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
                        Image.asset(
                          "assets/abm18.jpg",
                          height: 80,
                          width: 80,
                        ),
                        Column(
                          children: [
                            const Text(
                              "DODO",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'TAYC',
                              style: TextStyle(
                                color: Colors.grey[100],
                                fontSize: 20,
                                // fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(Icons.add_circle_outline, size: 20),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
