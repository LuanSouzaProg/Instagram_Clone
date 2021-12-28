import 'package:instagramflutter/models/user.dart';

class Post {
  final String id;
  final User postedBy;
  final String imageUrl;
  final bool isLiked;
  final bool isBookmarked;
  final String title;
  final String location;
  final String caption;
  final String postedTimeAgo;
  final String totalLikes;
  final String totalCommnets;

  Post(
      this.id,
      this.postedBy,
      this.imageUrl,
      this.isLiked,
      this.isBookmarked,
      this.title,
      this.location,
      this.caption,
      this.postedTimeAgo,
      this.totalLikes,
      this.totalCommnets);
}
