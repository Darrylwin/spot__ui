import 'package:flutter/material.dart';
class AlbumCard extends StatelessWidget {
  final ImageProvider image;
  final String label;
  final onTap;
  AlbumCard({
    super.key,
    required this.image,
    required this.label,
    required this.onTap,
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
            height: 120,
            width: 120,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          Text(label),
        ],
      ),
    );
  }
}
