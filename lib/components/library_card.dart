class LibraryCard {
  String bolledText;
  String message;
  String imagePath;

  LibraryCard({
    this.bolledText = 'Error',
    this.message = 'Error',
    this.imagePath = 'assets/album15.jpg',
  });

  static List<LibraryCard> getLibraries() {
    List<LibraryCard> library = [];

    library.add(
      LibraryCard(
        bolledText: 'Liked Songs',
        message: 'Playlist . 400 Songs',
      ),
    );

    // library.add(
    //   LibraryCard(
    //     bolledText: 'Your Episodes',
    //     message: 'Saved & downloaded episodes',
    //   ),
    // );

    // library.add(
    //   LibraryCard(
    //     bolledText: 'On repeat',
    //     message: 'Playlist . Made for You',
    //   ),
    // );

    // library.add(
    //   LibraryCard(
    //     bolledText: 'Doja Cat',
    //     message: 'Artist',
    //   ),
    // );

    // library.add(
    //   LibraryCard(
    //     bolledText: 'Ni (Extension)',
    //     message: 'Album . Ninho',
    //   ),
    // );

    // library.add(
    //   LibraryCard(
    //     bolledText: 'Gims LVDM',
    //     message: 'Playlist',
    //   ),
    // );

    // library.add(
    //   LibraryCard(
    //     bolledText: 'Daily Mix 3',
    //     message: 'Playlist . Made for you',
    //   ),
    // );

    // library.add(
    //   LibraryCard(
    //     bolledText: 'Imen es Radio',
    //     message: 'Playlist . Made for you',
    //   ),
    // );

    // library.add(
    //   LibraryCard(
    //     bolledText: 'This is Gims',
    //     message: 'Playlist . Spotify',
    //   ),
    // );

    // library.add(
    //   LibraryCard(
    //     bolledText: 'Jefe',
    //     message: 'Album . Ninho',
    //   ),
    // );

    // library.add(
    //   LibraryCard(
    //     bolledText: 'Ayra Starr',
    //     message: 'Artist',
    //   ),
    // );

    // library.add(
    //   LibraryCard(
    //     bolledText: 'Add Podcasts',
    //     message: 'Artist',
    //   ),
    // );


    return library;
  }
}
