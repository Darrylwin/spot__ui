import 'package:flutter/material.dart';

class RecentsRow extends StatelessWidget {
  const RecentsRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Row(
            children: [
              Icon(Icons.swap_vert_outlined),
              SizedBox(width: 16),
              Text(
                "Recents",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        Icon(Icons.grid_view_outlined),
      ],
    );
  }
}
