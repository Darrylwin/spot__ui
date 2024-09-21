// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'post.dart';

class MyPageView extends StatelessWidget {
  final _controller = PageController();

  MyPageView({super.key});

  @override
  Widget build(BuildContext context) {
    // final List<PostModel> myPosts = PostModel.getPost();

    return SafeArea(
      child: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
          Post(),
        ],
      ),
    );
  }
}
