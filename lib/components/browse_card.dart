import 'package:flutter/material.dart';

class BrowseCard extends StatelessWidget {
  const BrowseCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 185,
      decoration: BoxDecoration(
        color: Colors.pink,
        borderRadius: BorderRadius.circular(04),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
            child: Text(
              "Music",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Positioned(),
        ],
      ),
    );
  }
}
