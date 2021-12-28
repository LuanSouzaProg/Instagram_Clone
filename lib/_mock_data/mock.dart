import 'package:instagramflutter/models/post.dart';
import 'package:instagramflutter/models/story.dart';
import 'package:instagramflutter/models/user.dart';

User currentUser =
    User("id", "Luan Souza", "https://picsum.photos/id/1062/400/400");

final List<Story> stories = [
  Story("id", currentUser),
  Story("id", currentUser),
  Story("id", currentUser),
  Story("id", currentUser),
  Story("id", currentUser),
  Story("id", currentUser),
];

final List<Post> posts = [
  Post(
      "id",
      currentUser,
      "https://picsum.photos/id/1062/400/400",
      false,
      true,
      "title",
      "New York, USA",
      "caption caption caption",
      "a few seconds ago",
      "250",
      "30"),
  Post(
      "id1",
      currentUser,
      "https://picsum.photos/id/1063/400/400",
      true,
      false,
      "title1",
      "Toronto, Canada",
      "caption caption caption caption caption",
      "2 hours ago",
      "978",
      "256"),
  Post("id2", currentUser, "https://picsum.photos/id/1064/400/400", true, true,
      "title2", "Paris, France", "caption caption", "6 hours ago", "30", "2"),
  Post("id3", currentUser, "https://picsum.photos/id/1065/400/400", true, true,
      "title3", "Sydney, Australia", "caption", "a week ago", "735", "269"),
  Post(
      "id4",
      currentUser,
      "https://picsum.photos/id/1066/400/400",
      true,
      false,
      "title4",
      "Auckland, New Zealand",
      "caption caption caption caption caption ",
      "3 months ago",
      "4,530",
      "2,789"),
  Post(
      "id5",
      currentUser,
      "https://picsum.photos/id/1067/400/400",
      false,
      true,
      "title5",
      "Las Vegas, USA",
      "caption caption caption",
      "6 months ago",
      "86",
      "12"),
];
