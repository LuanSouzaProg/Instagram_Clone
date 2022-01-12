import 'package:flutter/material.dart';
import 'package:instagramflutter/widgets/custom_profile_app_bar.dart';
import 'package:instagramflutter/widgets/profile_header.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, index) {
          return [
            CustomProfileAppBar(),
            SliverToBoxAdapter(child: ProfileHeader(),)
          ];
        },
        body: Text("Hello"),
      ),
    );
  }
}
