import 'package:flutter/material.dart';
import 'package:instagramflutter/widgets/profile_label_count_widget.dart';

import 'add_story_card_profile.dart';

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 12, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              addStoryCardProfile(),
              SizedBox(width: 8),
              ProfileLabelCountWidget(
                labelText: 'Posts',
                count: '140',
              ),
              ProfileLabelCountWidget(
                labelText: 'Followers',
                count: '440',
              ),
              ProfileLabelCountWidget(
                labelText: 'Following',
                count: '370',
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Luan de Souza",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  "{Flutter Developer}",
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
