import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeView extends StatefulWidget {
  const YoutubeView({Key? key}) : super(key: key);

  @override
  _YoutubeViewState createState() => _YoutubeViewState();
}

class _YoutubeViewState extends State<YoutubeView> {
  final vidioUil = "https://www.youtube.com/watch?v=qOagQWjKpyM";
  late YoutubePlayerController _controller;
  @override
  void initState() {
    super.initState();
    final vidioId = YoutubePlayer.convertUrlToId(vidioUil);
    _controller = YoutubePlayerController(
        initialVideoId: vidioId!,
        flags: const YoutubePlayerFlags(autoPlay: false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'YouTube',
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            onReady: () => log('Ready'),
            bottomActions: [
              CurrentPosition(),
              ProgressBar(
                isExpanded: true,
                colors: const ProgressBarColors(
                    playedColor: Colors.red,
                    handleColor: Colors.red,
                    backgroundColor: Colors.grey),
              ),
              RemainingDuration(
                controller: _controller,
              ),
              FullScreenButton(
                color: Colors.grey,
              ),
            ],
          )
        ],
      ),
    );
  }
}
