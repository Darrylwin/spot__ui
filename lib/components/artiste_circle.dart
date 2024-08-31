import 'package:flutter/material.dart';

import '../views/artist_view.dart';
import '../views/library_view.dart';

class ArtisteCircle extends StatelessWidget {
  final AssetImage image;
  final Color color;
  ArtisteCircle({
    super.key,
    required this.image,
    required this.color,
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
        height: 85,
        width: 85,
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
