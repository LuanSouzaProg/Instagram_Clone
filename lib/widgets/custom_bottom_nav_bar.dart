import 'package:flutter/material.dart';
import 'package:instagramflutter/_mock_data/mock.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key, required this.selectedPageIndex, required this.onIconTap})
      : super(key: key);
  final int selectedPageIndex;
  final Function onIconTap;
  final double _iconSize = 30;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
                onPressed: () => {onIconTap(0)},
                iconSize: _iconSize,
                icon: Icon(
                    selectedPageIndex == 0 ? Icons.home : Icons.home_outlined)),
            IconButton(
                onPressed: () => {onIconTap(1)},
                iconSize: _iconSize,
                icon: Icon(selectedPageIndex == 1
                    ? Icons.search
                    : Icons.search_outlined)),
            IconButton(
                onPressed: () => {onIconTap(2)},
                iconSize: _iconSize,
                icon: Icon(selectedPageIndex == 2
                    ? Icons.smart_display
                    : Icons.smart_display_outlined)),
            IconButton(
                onPressed: () => {onIconTap(3)},
                iconSize: _iconSize,
                icon: Icon(selectedPageIndex == 3
                    ? Icons.local_mall
                    : Icons.local_mall_outlined)),
            InkWell(
              onTap: () => {onIconTap(4)},
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: _iconSize / 2,
                backgroundImage: NetworkImage(currentUser.profileImageUrl),
              ),
            )
          ],
        ),
      ),
    );
  }
}
