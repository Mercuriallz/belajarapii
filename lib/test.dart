import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class myYoutube1 extends StatefulWidget {
  const myYoutube1({Key key}) : super(key: key);

  @override
  _myYoutube1State createState() => _myYoutube1State();
}

class _myYoutube1State extends State<myYoutube1> {
  YoutubePlayerController _controller;
  TextEditingController _idController;
  TextEditingController _seekToController;
  SnackBar _showSnackBar;
  PlayerState _playerState;
  YoutubeMetaData _videoMetaData;
  double _volume = 100;
  bool _muted = false;
  bool _isPlayerReady = false;

  final List<String> _ids = [
    'fMy9i8C9cdA',
    'nPt8bK2gbaU',
    'gQDByCdjUXw',
    'iLnmTe5Q2Qw',
    '_WoCV4c6XOE',
    'KmzdUe0RSJo',
    '6jZDSSZZxjQ',
    'p2lYr3vM_1w',
    '7QUtEmBT_-w',
    '34_PXCzGw1M',
  ];

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: _ids.first,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );

    String videoId;
    videoId = YoutubePlayer.convertUrlToId(
        "https://www.youtube.com/watch?v=dQw4w9WgXcQ");
    print(videoId);

    return Scaffold(
        appBar: AppBar(
          title: Text("Youtube Clone"),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            YoutubePlayerBuilder(
                player: YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.blue,
                  topActions: <Widget>[
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Text(
                        _controller.metadata.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 25,
                      ),
                      onPressed: () {
                        log("Settings Tapped!");
                      },
                    )
                  ],
                  onReady: () {
                    _isPlayerReady = true;
                  },
                  onEnded: (data) {
                    _controller.load(
                        _ids[(_ids.indexOf(data.videoId) + 1) % _ids.length]);
                    _showSnackBar;
                  },
                ),
                builder: (context, player) {
                  return Column(
                    children: [
                      player,
                    ],
                  );
                })
          ]),
        ));
  }
}
