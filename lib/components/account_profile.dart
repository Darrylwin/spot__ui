import 'package:flutter/material.dart';

class AccountProfile extends StatelessWidget {
  const AccountProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Drawer(),
      child: CircleAvatar(
        radius: 23,
        backgroundImage: AssetImage("assets/profil.jpeg"),
      ),
    );
  }
}
