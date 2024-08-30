import 'package:flutter/material.dart';

import '../components/album_rectangle.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
        ),
        Center(
          child: AlbumRectangle(
            image: AssetImage("assets/album1.jpg"),
            color: Colors.pink,
          ),
        ),
      ],
    );
  }
}
