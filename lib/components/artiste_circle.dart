import 'package:flutter/material.dart';
import '../views/artist_view.dart';

class ArtisteCircle extends StatelessWidget {
  final AssetImage image;
  final Color color;
  final double dimensions;
  ArtisteCircle({
    super.key,
    required this.image,
    required this.color,
    this.dimensions = 85,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ArtistView(
              image: image,
              color: color,
            ),
          ),
        );
      },
      child: Container(
        height: dimensions,
        width: dimensions,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
