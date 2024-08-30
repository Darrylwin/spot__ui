import 'package:flutter/material.dart';

class Filter extends StatefulWidget {
  final String text;
  Filter({
    super.key,
    required this.text,
  });

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        isSelected = !isSelected;
      }),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 14),
          height: 42,
          color: isSelected
              ? Color.fromARGB(255, 34, 79, 36)
              : Color.fromARGB(70, 75, 73, 73),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(fontSize: 17),
            ),
          ),
        ),
      ),
    );
  }
}
