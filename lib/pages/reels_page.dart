import 'package:flutter/material.dart';
import 'package:instagramflutter/_mock_data/mock.dart';
import 'package:instagramflutter/widgets/reel_detail.dart';
import 'package:instagramflutter/widgets/reel_side_action_bar.dart';

class ReelsPage extends StatelessWidget {
  const ReelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: Text(
          "Reels",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(
              Icons.photo_camera_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: reels.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    reels[index].imageUrl),
              ),
            ),
            child: Center(
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.3),
                          Colors.transparent,
                        ],
                        begin: Alignment(0, -0.75),
                        end: Alignment(0, 0.1),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.3),
                          Colors.transparent,
                        ],
                        end: Alignment(0, -0.75),
                        begin: Alignment(0, 0.1),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Flexible(
                            flex: 14,
                            child: ReelDetail(
                              reel: reels[index],
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            child: ReelSideActionBar(
                              reel: reels[index],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
