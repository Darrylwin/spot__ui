import 'package:flutter/material.dart';

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
          height: 100,
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: [
        //     Container(
        //       height: 100,
        //       width: 100,
        //       child:
        //           Image.asset(/*library[index].imagePath*/ "assets/album1.jpg"),
        //     ),
        //     SizedBox(width: 16),
        //     Column(crossAxisAlignment: CrossAxisAlignment.start,
        //       children: [

        //         Text("Music"),
        //         SizedBox(height: 16),
        //         Text("Doja cat"),
        //       ],
        //     ),
        //   ],
        // ),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: 100,
              child: Image.asset("assets/album1.jpg"),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Artist.',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 8),
                Text(
                  'Podcast',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 138, 136, 136),
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
