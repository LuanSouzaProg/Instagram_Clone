import 'package:instagramflutter/models/post.dart';
import 'package:instagramflutter/models/reel.dart';
import 'package:instagramflutter/models/story.dart';
import 'package:instagramflutter/models/user.dart';

User currentUser = User("id", "Luan Souza", "https://picsum.photos/id/1062/400/400");
User demoUser1 = User('id1', "user_1", "https://picsum.photos/id/1063/400/400");
User demoUser2 = User('id2', "user_1", "https://picsum.photos/id/1064/400/400");
User demoUser3 = User('id3', "user_1", "https://picsum.photos/id/1065/400/400");
User demoUser4 = User('id4', "user_1", "https://picsum.photos/id/1066/400/400");
User demoUser5 = User('id5', "user_1", "https://picsum.photos/id/1067/400/400");

final List<Story> stories = [
  Story("id", currentUser),
  Story("id1", demoUser1),
  Story("id2", demoUser2),
  Story("id3", demoUser3),
  Story("id4", demoUser4),
  Story("id5", demoUser5),
];

final List<Post> posts = [
  Post(
      "id3",
      demoUser1,
      "https://picsum.photos/id/1069/400/400",
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
      demoUser1,
      "https://picsum.photos/id/1063/400/400",
      true,
      false,
      "title1",
      "Toronto, Canada",
      "caption caption caption caption caption",
      "2 hours ago",
      "978",
      "256"),
  Post("id2", demoUser2, "https://picsum.photos/id/1064/400/400", true, true,
      "title2", "Paris, France", "caption caption", "6 hours ago", "30", "2"),
  Post("id3", demoUser5, "https://picsum.photos/id/1065/400/400", true, true,
      "title3", "Sydney, Australia", "caption", "a week ago", "735", "269"),
  Post(
      "id4",
      demoUser4,
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
      demoUser3,
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

final List<Reel> reels = [
  Reel(
    demoUser1,
    "https://picsum.photos/id/1071/400/400",
    "Eden Mix",
    "very productive day today!!very productive day today!!very productive day today!!very productive day today!!very productive day today!!",
    "10k",
    "987",
    true,
    true,
    demoUser2,
  ),
  Reel(
    demoUser2,
    "https://picsum.photos/id/1070/400/400",
    "Eden Mix",
    "very productive day today!!very productive day today!!very productive day today!!very productive day today!!very productive day today!!very productive day today!!",
    "5.2k",
    "320",
    true,
    false,
    demoUser1,
  ),
  Reel(
    demoUser3,
    "https://picsum.photos/id/1072/400/400",
    "Eden Mix",
    "very productive day today!!very productive day today!!very productive day today!!very productive day today!!very productive day today!!",
    "360",
    "27",
    false,
    true,
    demoUser4,
  ),
  Reel(
    demoUser4,
    "https://picsum.photos/id/1073/400/400",
    "Eden Mix",
    "very productive day today!!very productive day today!!very productive day today!!very productive day today!!",
    "298k",
    "27k",
    false,
    false,
    demoUser3,
  ),
  Reel(
    demoUser5,
    "https://picsum.photos/id/1074/400/400",
    "Eden Mix",
    "very productive day today!!very productive day today!!very productive day today!!",
    "897k",
    "295k",
    true,
    true,
    demoUser1,
  ),
];
