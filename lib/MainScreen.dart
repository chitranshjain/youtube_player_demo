import 'package:flutter/material.dart';
import 'package:flutter_youtube/flutter_youtube.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: RaisedButton(
            onPressed: () {
              playVideo();
            },
            child: Text('Play video from youtube'),
          ),
        ),
      ),
    );
  }

  void playVideo() {
    FlutterYoutube.playYoutubeVideoByUrl(
        apiKey: 'your API key goes here',         //Enter your API key
        videoUrl: 'https://www.youtube.com/watch?v=_fh64GbFSw4',
        fullScreen: true);
  }
}
