import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class Cprinfo extends StatelessWidget {
  const Cprinfo({super.key});


  @override
  Widget build(BuildContext context) {
    double screenw = MediaQuery.of(context).size.width;
    double screenh = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 142, 181, 247),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Container(
            height: screenh * 0.2,
            width: screenw * 1,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.red,
                    Colors.red,
                    Colors.pinkAccent,
                    Colors.red
                  ],
                  end: Alignment.topRight,
                  begin: Alignment.bottomLeft,
                ),
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(100))),
            child: const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text("Emergency",
                      style: TextStyle(color: Colors.grey, fontSize: 15)),
                  SizedBox(height: 5),
                  Text(
                    "CPR",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Steps",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    ElevatedButton(
                      
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey.withOpacity(0.2),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        onPressed: () {
                             String videoId='https://www.youtube.com/watch?v=-NodDRTsV88';
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>VideoScreen(videoId: videoId)));
                        },
                        child: const Row(
                          children:  [
                            Icon(
                              Icons.play_circle,
                              color: Colors.red,
                              size: 30,
                            ),
                            Text(
                              "Show me how",
                              style: TextStyle(color: Colors.red, fontSize: 20),
                            ),
                          ],
                        ))
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: screenh * 0.035,
                      width: screenw * 0.07,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.redAccent),
                      child: const Text("1"),
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text("30 Chest Compressions",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 5),
                const Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 41),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Two Hands,interlocked"),
                      Text("Centre of chest"),
                      Text("Push hard and fast"),
                      Text("Depth 2 inches +"),
                      Text("Rate 100-120 per minute")
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: screenh * 0.035,
                      width: screenw * 0.07,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.redAccent),
                      child: const Text("1"),
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text("2 Rescue Breaths",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 5),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 41),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Head tilt,chin lift"),
                      Text("Pinch the nose"),
                      Text("Give 2 breaths"),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: screenh * 0.035,
                      width: screenw * 0.07,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.redAccent),
                      child: const Text("1"),
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Text("Repeat",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 41),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text("Repeat untill help arrives"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




class VideoScreen extends StatelessWidget {
  final String videoId;

  const VideoScreen({required this.videoId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('YouTube Video'),
      ),
      body: Center(
        child: YoutubePlayer(
          controller: YoutubePlayerController(
            initialVideoId: videoId,
            flags: const YoutubePlayerFlags(
              autoPlay: true,
              mute: false,
            ),
          ),
          showVideoProgressIndicator: true,
          progressIndicatorColor: Colors.red,
          progressColors: const ProgressBarColors(
            playedColor: Colors.red,
            handleColor: Colors.redAccent,
          ),
        ),
      ),
      
    );
  }
}


