import 'package:flutter/material.dart';

class BrowseCard extends StatelessWidget {
  final Color boxColor;
  final String text;
  final String imagePath;
  const BrowseCard({
    super.key,
    required this.boxColor,
    required this.text, required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 190,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(04),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: -15,
            right: -15,
            child: Transform.rotate(
              angle: 0.7, // Inclinaison de l'image (en radians)
              child: Image.asset(
                imagePath,
                width: 100,
                height: 100,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
