import 'package:flutter/material.dart';

class ArtisteCircle extends StatelessWidget {
  final String imagePath;
  const ArtisteCircle({
    super.key,
    this.imagePath = "assets/album1.jpg",
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
