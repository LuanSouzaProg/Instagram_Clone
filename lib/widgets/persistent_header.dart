import 'package:flutter/material.dart';

class PersistentHeader extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double mXExtent;
  final double mnExtent;

  PersistentHeader(
      {required this.child, required this.mXExtent, required this.mnExtent});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      height: mXExtent,
      child: child,
    );
  }

  @override
  double get maxExtent => mXExtent;

  @override
  double get minExtent => mnExtent;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
