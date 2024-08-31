// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import '../views/library_view.dart';

class AlbumRectangle extends StatelessWidget {
  final AssetImage image;
  final Color color;
  final double dimensions;
  const AlbumRectangle({
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
            builder: (context) => LibraryView(
              image: image,
              color: color,
            ),
          ),
        );
      },
      child: Container(
        height: dimensions,
        width: dimensions,
        child: Image(
          fit: BoxFit.cover,
          image: image,
        ),
      ),
    );
  }
}
