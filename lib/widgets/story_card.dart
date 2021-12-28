import 'package:flutter/material.dart';
import 'package:instagramflutter/models/story.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({Key? key, required this.story}) : super(key: key);
  final Story story;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(1),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red, Colors.orange, Colors.yellow.shade800],
              ),
              border: Border.all(width: 2, color: Colors.transparent),
              borderRadius: BorderRadius.circular(50)),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 32,
            child: CircleAvatar(
              backgroundImage: NetworkImage(story.postedBy.profileImageUrl),
              radius: 30,
            ),
          ),
        ),
        Spacer(),
        Text(
          story.postedBy.userName,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
