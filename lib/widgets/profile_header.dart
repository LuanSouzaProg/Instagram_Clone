import 'package:flutter/material.dart';
import 'package:instagramflutter/widgets/profile_label_count_widget.dart';

import 'add_story_card_profile.dart';

class ProfileHeader extends StatefulWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  State<ProfileHeader> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileHeader> {
  bool _isExpansionTileOpen = false;

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
              ProfileLabelCountWidget(labelText: 'Posts', count: '140'),
              ProfileLabelCountWidget(
                labelText: 'Followers',
                count: '440',
              ),
              ProfileLabelCountWidget(labelText: 'Following', count: '370'),
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
                child: Text("{Flutter Developer}"),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(Icons.expand_more_outlined),
              ),
            ],
          ),
        ),
        ExpansionTile(
          onExpansionChanged: (_isOpen) => {
            setState(
              () {
                _isExpansionTileOpen = _isOpen;
              },
            ),
          },
          title: Text(
            "Story Highlights",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 14, color: Colors.black),
          ),
          subtitle: _isExpansionTileOpen
              ? Text(
                  "Keep your favorite stories on your profile",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.5,
                      fontWeight: FontWeight.w400),
                )
              : null,
          trailing: Icon(
            _isExpansionTileOpen
                ? Icons.expand_less_outlined
                : Icons.expand_more_outlined,
            color: Colors.grey.shade500,
          ),
          children: [
            Container(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) {
                  return index != 0
                      ? Container(
                          width: 80,
                          alignment: Alignment.topCenter,
                          padding: EdgeInsets.symmetric(horizontal: 5),
                          child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey.shade300),
                        )
                      : Container(
                          width: 80,
                          child: Column(
                            children: [
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey.shade400),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Icon(Icons.add, size: 30),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                "New",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        );
                },
              ),
            ),
          ],
        ),
        Divider(
          height: 1,
          color: _isExpansionTileOpen
              ? Colors.transparent
              : Colors.grey.shade400,
        ),
      ],
    );
  }
}
