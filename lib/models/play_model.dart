class PlayModel {
  String imagePath;
  String title;
  String subTitle;
  bool isLiked;

  PlayModel({
    required this.imagePath,
    required this.subTitle,
    required this.title,
    required this.isLiked,
  });

  static List<PlayModel> getPlayModel() {
    List<PlayModel> play = [];

    play.add(PlayModel(
      imagePath: "assets/ni.jpg",
      subTitle: "Ninho",
      title: "Bad",
      isLiked: false,
    ));

    play.add(PlayModel(
      imagePath: "assets/album13.jpg",
      subTitle: "Gims",
      title: "Corazon",
      isLiked: false,
    ));

    // play.add(PlayModel(
    //   imagePath: imagePath,
    //   subTitle: subTitle,
    //   title: title,
    // ));

    // play.add(PlayModel(
    //   imagePath: imagePath,
    //   subTitle: subTitle,
    //   title: title,
    // ));

    // play.add(PlayModel(
    //   imagePath: imagePath,
    //   subTitle: subTitle,
    //   title: title,
    // ));

    // play.add(PlayModel(
    //   imagePath: imagePath,
    //   subTitle: subTitle,
    //   title: title,
    // ));

    // play.add(PlayModel(
    //   imagePath: imagePath,
    //   subTitle: subTitle,
    //   title: title,
    // ));

    // play.add(PlayModel(
    //   imagePath: imagePath,
    //   subTitle: subTitle,
    //   title: title,
    // ));

    // play.add(PlayModel(
    //   imagePath: imagePath,
    //   subTitle: subTitle,
    //   title: title,
    // ));

    // play.add(PlayModel(
    //   imagePath: imagePath,
    //   subTitle: subTitle,
    //   title: title,
    // ));

    return play;
  }
}
