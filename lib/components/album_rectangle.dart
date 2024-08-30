import 'package:flutter/material.dart';
import '../views/library_view.dart';

class AlbumRectangle extends StatelessWidget {
  final String imagePath;
  final AssetImage image;
  final Color color;
  const AlbumRectangle({
    super.key,
    this.imagePath = "assets/album1.jpg",
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
            builder: (context) => LibraryView(image: image, color: color,),
          ),
        );
      },
      child: Container(
        height: 85,
        width: 85,
        child: Image(
          fit: BoxFit.cover,
          image: image,
        ),
      ),
    );
  }
}
