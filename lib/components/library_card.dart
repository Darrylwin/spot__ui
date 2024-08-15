// class LibraryCard {
//   String bolledText;
//   String message;
//   String imagePath;

//   LibraryCard({
//     this.bolledText = 'Error',
//     this.message = 'Error',
//     this.imagePath = 'assets/album1.jpg',
//   });

//   static List<LibraryCard> getLibraries() {
//     List<LibraryCard> library = [];

//     library.add(
//       LibraryCard(
//         bolledText: 'Liked Songs',
//         message: 'Playlist . 400 Songs',
//       ),
//     );

//     library.add(
//       LibraryCard(
//         bolledText: 'Your Episodes',
//         message: 'Saved & downloaded episodes',
//       ),
//     );

//     // library.add(
//     //   LibraryCard(
//     //     bolledText: 'On repeat',
//     //     message: 'Playlist . Made for You',
//     //   ),
//     // );

//     // library.add(
//     //   LibraryCard(
//     //     bolledText: 'Doja Cat',
//     //     message: 'Artist',
//     //   ),
//     // );

//     // library.add(
//     //   LibraryCard(
//     //     bolledText: 'Ni (Extension)',
//     //     message: 'Album . Ninho',
//     //   ),
//     // );

//     // library.add(
//     //   LibraryCard(
//     //     bolledText: 'Gims LVDM',
//     //     message: 'Playlist',
//     //   ),
//     // );

//     // library.add(
//     //   LibraryCard(
//     //     bolledText: 'Daily Mix 3',
//     //     message: 'Playlist . Made for you',
//     //   ),
//     // );

//     // library.add(
//     //   LibraryCard(
//     //     bolledText: 'Imen es Radio',
//     //     message: 'Playlist . Made for you',
//     //   ),
//     // );

//     // library.add(
//     //   LibraryCard(
//     //     bolledText: 'This is Gims',
//     //     message: 'Playlist . Spotify',
//     //   ),
//     // );

//     // library.add(
//     //   LibraryCard(
//     //     bolledText: 'Jefe',
//     //     message: 'Album . Ninho',
//     //   ),
//     // );

//     // library.add(
//     //   LibraryCard(
//     //     bolledText: 'Ayra Starr',
//     //     message: 'Artist',
//     //   ),
//     // );

//     // library.add(
//     //   LibraryCard(
//     //     bolledText: 'Add Podcasts',
//     //     message: 'Artist',
//     //   ),
//     // );

//     return library;
//   }
// }

import 'package:flutter/material.dart';

import 'album_rectangle.dart';

class LibraryCard extends StatelessWidget {
  final Widget content;
  final String bolledText;
  final String message;

  LibraryCard({
    super.key,
    required this.bolledText,
    required this.message,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // AlbumRectangle(
          //   imagePath: imagePath,
          // ),
          content,
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                bolledText,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8),
              Text(
                message,
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 138, 136, 136),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
