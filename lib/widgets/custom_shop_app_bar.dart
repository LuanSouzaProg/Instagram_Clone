import 'package:flutter/material.dart';

class CustomShowAppBar extends StatelessWidget {
  const CustomShowAppBar({Key? key, required this.showSearchBar}) : super(key: key);
  final bool showSearchBar;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      centerTitle: false,
      elevation: 0,
      backgroundColor: Colors.white,
      title: showSearchBar
          ? Container(
              height: 38,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey.shade200,
              ),
              child: TextField(
                cursorColor: Colors.grey.shade500,
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(
                    fontSize: 16.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade500,
                  ),
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.search,
                    size: 22,
                    color: Colors.grey.shade500,
                  ),
                ),
                style: TextStyle(
                  fontSize: 16.5,
                  color: Colors.black,
                ),
              ),
            )
          : Text(
              "Shop",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
      actions: [
        IconButton(
          onPressed: () => {},
          icon: Icon(
            Icons.class__outlined,
            color: Colors.black,
          ),
        ),
        IconButton(
          onPressed: () => {},
          icon: Icon(
            Icons.dehaze_outlined,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
