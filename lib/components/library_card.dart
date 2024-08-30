import 'package:flutter/material.dart';

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
          content,
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                bolledText,
                style: TextStyle(fontSize: 19.3, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 8),
              Text(
                message,
                style: TextStyle(
                  fontSize: 17,
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
