import 'package:flutter/material.dart';
import 'package:instagramflutter/_mock_data/mock.dart';

class addStoryCard extends StatelessWidget {
  const addStoryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundColor: Colors.pink,
              radius: 32,
              backgroundImage: NetworkImage(currentUser.profileImageUrl),
            ),
            Positioned(
              top: 42,
              left: 40,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 3),
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue
                ),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () => {},
                  icon: Icon(Icons.add),
                  iconSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Spacer(),
        Text(
          "Your Story",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
