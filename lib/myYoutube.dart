import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class myYoutube extends StatefulWidget {
  const myYoutube({Key key}) : super(key: key);

  @override
  _myYoutubeState createState() => _myYoutubeState();
}

class _myYoutubeState extends State<myYoutube> {
  YoutubePlayerController _controller;
  TextEditingController _idController;
  TextEditingController _seekToController;
  PlayerState _playerState;
  YoutubeMetaData _videoMetaData;
  double _volume = 100;
  bool _muted = false;
  bool _isPlayerReady = false;

  final List<String> _ids = [
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
  void InitState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: _ids.first,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    );
  }

  Widget build(BuildContext context) {
//     YoutubePlayerController(
//       initialVideoId: 'dQw4w9WgXcQ',
//       flags: YoutubePlayerFlags(
//         autoPlay: true,
//         mute: false,
//       ),
//     );

//     String videoId;
//     videoId = YoutubePlayer.convertUrlToId(
//         "https://www.youtube.com/watch?v=dQw4w9WgXcQ");
//     print(videoId);

//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Youtube Clone"),
//         ),
//         body: SingleChildScrollView(
//           child: Column(children: [
//             YoutubePlayerBuilder(
//                 player: YoutubePlayer(
//                   controller: _controller,
//                   showVideoProgressIndicator: true,
//                   progressIndicatorColor: Colors.blue,
//                   topActions: <Widget>[
//                     const SizedBox(
//                       width: 8,
//                     ),
//                     Expanded(
//                       child: Text(
//                         _controller.metadata.title,
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 12,
//                         ),
//                         overflow: TextOverflow.ellipsis,
//                         maxLines: 1,
//                       ),
//                     ),
//                     IconButton(
//                       icon: const Icon(
//                         Icons.settings,
//                         color: Colors.white,
//                         size: 25,
//                       ),
//                       onPressed: () {
//                         log("Settings Tapped!");
//                       },
//                     )
//                   ],
//                   // onReady: () {
//                   //   _isPlayerReady = true;
//                   // },
//                 ),
//                 builder: (context, player) {
//                   return Column(
//                     children: [
//                       player,
//                     ],
//                   );
//                 })
//           ]),
//         ));
  }
}
