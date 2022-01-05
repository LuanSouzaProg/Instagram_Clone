import 'package:flutter/material.dart';
import 'package:instagramflutter/widgets/category_bar.dart';
import 'package:instagramflutter/widgets/custom_explore_app_bar.dart';
import 'package:instagramflutter/widgets/persistentt_header.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: SafeArea(
          child: CustomScrollView(
            slivers: [
              CustomExploreAppBar(),
              SliverPersistentHeader(
                pinned: true,
                delegate: PersistentHeader(
                  child: CategoryBar(),
                ),
              ),
            ],
          ),
        ));
  }
}
