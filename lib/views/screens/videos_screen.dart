import 'package:bloger_base/views/widgets/video_player_widget.dart';
import 'package:flutter/material.dart';

class DisplayVideoScreen extends StatefulWidget {
  const DisplayVideoScreen({super.key});

  @override
  State<DisplayVideoScreen> createState() => _DisplayVideoScreenState();
}

class _DisplayVideoScreenState extends State<DisplayVideoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        controller: PageController(initialPage: 0, viewportFraction: 1),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Stack(
            alignment: Alignment.bottomLeft,
            children: [
              const VideoPlayerWidget(
                videoUrl: "aaaa",
              ),
              Container(
                margin: const EdgeInsets.only(
                  left: 13,
                  bottom: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "@username",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text("MY CAPTION IS HERE"),
                    Text("Song Name",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: MediaQuery.of(context).size.height - 300,
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 3.8, right: 1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // const ProfileButton(profilePhotoUrl: ""),
                      const Spacer(),
                      Column(
                        children: const [
                          Icon(Icons.favorite_outline_rounded,
                              size: 33, color: Colors.white),
                          Text(
                            "Like",
                            style: TextStyle(fontSize: 13, color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),

                      Column(
                        children: const [
                          Icon(Icons.comment_outlined,
                              size: 33, color: Colors.white),
                          Text(
                            "Comments",
                            style: TextStyle(fontSize: 13, color: Colors.white),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),

                      Column(
                        children: const [
                          Icon(Icons.reply_rounded,
                              size: 33, color: Colors.white),
                          Text(
                            "Share",
                            style: TextStyle(fontSize: 13, color: Colors.white),
                          ),
                        ],
                      ),

                      const SizedBox(height: 60),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
