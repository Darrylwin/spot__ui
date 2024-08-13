class GenreCard {
  String bgImage, text;
  GenreCard({
    this.text = 'Text  mettre en bas de la vue',
    this.bgImage = 'assets/album1.jpg',
  });

  static List<GenreCard> getGenres() {
    List<GenreCard> genre = [];

    genre.add(
      GenreCard(
        text: "#afro r&b",
        bgImage: "assets/album8.jpg",
      ),
    );

    genre.add(
      GenreCard(
        text: "#Rap clam",
        bgImage: "assets/album4.jpg",
      ),
    );

    genre.add(
      GenreCard(
        text: "#French Music",
        bgImage: "assets/album12.jpg",
      ),
    );

    genre.add(
      GenreCard(
        text: "#Top tendance",
        bgImage: "assets/album11.jpg",
      ),
    );

    genre.add(
      GenreCard(
        text: "#Drake",
        bgImage: "assets/album2.jpg",
      ),
    );

    return genre;
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     // height: 225,
  //     width: 125,
  //     child: Image.asset(
  //       bgImage,
  //       fit: BoxFit.cover,
  //     ),
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(10),
  //     ),
  //   );
  // }

}
