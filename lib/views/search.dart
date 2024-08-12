import 'package:flutter/material.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 23,
                        backgroundImage: AssetImage("assets/profil.jpeg"),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Search",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Icon(Icons.camera_alt_outlined, size: 30, weight: 40)
                ],
              ),
              SizedBox(height: 40),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: const EdgeInsetsDirectional.all(6.0),
                    child: Icon(Icons.search_rounded, size: 40),
                  ),
                  hintText: 'What Should you listen to ?',
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(230, 158, 158, 158),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
