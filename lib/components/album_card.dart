import 'package:flutter/material.dart';
class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  final onTap;
  final  double size;
  const AlbumCard({
    super.key,
    required this.image,
    required this.label,
    required this.onTap,
    this.size = 120,

  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: image,
            height: size,
            width: size,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          Text(label),
        ],
      ),
    );
  }
}
