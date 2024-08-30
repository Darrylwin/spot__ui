// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';

class PlayModel extends StatefulWidget {
  PlayModel({
    super.key,
    required this.imagePath,
    required this.subTitle,
    required this.title,
  });

  String title;

  String subTitle;

  String imagePath;

  @override
  State<PlayModel> createState() => _PlayModelState();
}

class _PlayModelState extends State<PlayModel> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(18),
      // ),
      title: Text(
        widget.title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        widget.subTitle,
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
      leading: Container(
        height: 70,
        width: 70,
        child: Image(
          fit: BoxFit.cover,
          image: AssetImage(widget.imagePath),
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isLiked = !isLiked;
              });
            },
            child: Icon(
              isLiked ? Icons.check_circle : Icons.add_circle_outline_sharp,
              color: isLiked ? Colors.green : Colors.white,
            ),
          ),
          SizedBox(width: 20),
          Icon(Icons.more_vert),
        ],
      ),
    );
  }
}
