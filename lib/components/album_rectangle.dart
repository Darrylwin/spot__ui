import 'package:flutter/material.dart';
import '../views/library_view.dart';

class AlbumRectangle extends StatelessWidget {
  final String imagePath;
  final AssetImage image;
  const AlbumRectangle({
    super.key,
    this.imagePath = "assets/album1.jpg",
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LibraryView(image: image),
          ),
        );
      },
      child: Container(
        height: 85,
        width: 85,
        // decoration: BoxDecoration(
        //   // shape: BoxShape.circle,
        //   image: DecorationImage(
        //     image: AssetImage(imagePath),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: Image(
          fit: BoxFit.cover,
          image: image,
        ),
      ),
    );
  }
}
