import 'package:flutter/material.dart';

import '../views/album_view.dart';

class SongCard extends StatelessWidget {
  final AssetImage image;
  SongCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AlbumView(image: image),
          ),
        );
      },
      child: Container(
        width: 140,
        child: Column(
          children: [
            Image(
              image: image,
              width: 140,
              height: 140,
            ),
            Text(
              'Bad Bunny, Drake, Ice Spice, Tayloe Swift, Cardi B, ...',
              style: Theme.of(context).textTheme.bodySmall,
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
