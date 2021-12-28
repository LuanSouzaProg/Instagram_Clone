import 'package:flutter/material.dart';
import 'package:instagramflutter/pages/explore_page.dart';
import 'package:instagramflutter/pages/home_page.dart';
import 'package:instagramflutter/pages/profile_page.dart';
import 'package:instagramflutter/pages/reels_page.dart';
import 'package:instagramflutter/pages/shop_page.dart';
import 'package:instagramflutter/widgets/custom_bottom_nav_bar.dart';

class NavigationContainer extends StatefulWidget {
  const NavigationContainer({Key? key}) : super(key: key);

  @override
  _NavigationContainerState createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  int _selectPageIndex = 0;

  static const List<Widget> _appPages = [
    HomePage(),
    ExplorePage(),
    ReelsPage(),
    ShopPage(),
    ProfilePage(),
  ];

  void _onIconTapped(int index) {
    setState(() {
      _selectPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _appPages[_selectPageIndex],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedPageIndex: _selectPageIndex,
        onIconTap: _onIconTapped,
      ),
    );
  }
}
