import 'package:flutter/material.dart';

import 'post.dart';

class MyPageView extends StatelessWidget {
  final _controller = PageController();

  MyPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
        scrollDirection: Axis.vertical,
        controller: _controller,
        children: [
          Post(
            color: Colors.pinkAccent,
          ),
          Post(
            color: Colors.purple,
          ),
          Post(
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
