import 'package:flutter/material.dart';
import 'package:instagramflutter/widgets/category_bar.dart';
import 'package:instagramflutter/widgets/custom_shop_app_bar.dart';
import 'package:instagramflutter/widgets/persistent_header.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  late ScrollController _scrollController;
  bool _showSearchBar = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController()
      ..addListener(
        () {
          setState(
            () {
              _showSearchBar = _scrollController.offset > 48;
            },
          );
        },
      );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            CustomShowAppBar(
              showSearchBar: _showSearchBar,
            ),
            SliverPersistentHeader(
              delegate: PersistentHeader(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 4,
                    left: 14,
                    right: 14,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade200,
                    ),
                    child: TextField(
                      cursorColor: Colors.grey.shade500,
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16.5,
                          color: Colors.grey.shade500,
                        ),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          size: 22,
                          color: Colors.grey.shade500,
                        ),
                      ),
                      style: TextStyle(color: Colors.black, fontSize: 16.5),
                    ),
                  ),
                ),
                mXExtent: 42,
                mnExtent: 42,
              ),
            ),
            SliverPersistentHeader(
              delegate: PersistentHeader(
                child: CategoryBar(
                  categories: [
                    "Shop",
                    "Collections",
                    "Editors' Picks",
                    "Videos"
                  ],
                ),
                mXExtent: 50,
                mnExtent: 50,
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (_, int index) {
                  return Container(
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://picsum.photos/id/${index + 1070}/500/500"),
                      ),
                    ),
                    child: index == 0
                        ? Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Continue Shopping",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          )
                        : null,
                  );
                },
                childCount: 15,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 1, mainAxisSpacing: 1),
            ),
          ],
        ),
      ),
    );
  }
}
