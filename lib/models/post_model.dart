class PostModel {
  final String titre;
  final String imagePath;

  PostModel({
    required this.imagePath,
    required this.titre,
  });

  static List<PostModel> getPost() {
    List<PostModel> myPosts = [];

    myPosts.add(
      PostModel(
        imagePath: "assets/top_ayra.jpg",
        titre: "Ayra Star",
      ),
    );
    myPosts.add(
      PostModel(
        imagePath: "assets/abm16.jpg",
        titre: "Ninho",
      ),
    );
    myPosts.add(
      PostModel(
        imagePath: "assets/abm19.jpg",
        titre: "Tiakola",
      ),
    );
    myPosts.add(
      PostModel(
        imagePath: "assets/abm21.jpg",
        titre: "Ice Spice",
      ),
    );
    myPosts.add(
      PostModel(
        imagePath: "assets/abm22.jpg",
        titre: "Nicki Minaj",
      ),
    );
    myPosts.add(
      PostModel(
        imagePath: "assets/abm23.jpg",
        titre: "Cardi B",
      ),
    );
    myPosts.add(
      PostModel(
        imagePath: "assets/abm24.jpg",
        titre: "Leto",
      ),
    );

    return myPosts;
  }
}
