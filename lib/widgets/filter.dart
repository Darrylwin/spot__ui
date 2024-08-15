import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  final String text;
  const Filter({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 14),
        height: 42,
        color: Color.fromARGB(70, 75, 73, 73),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
