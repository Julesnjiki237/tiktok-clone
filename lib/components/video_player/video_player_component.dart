import 'package:flutter/material.dart';
import 'package:flutterapi/components/video_player_progress_bar/video_player_progress_bar_component.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerComponent extends StatefulWidget {
  final String media;

  const VideoPlayerComponent({super.key, required this.media});

  @override
  State<VideoPlayerComponent> createState() => _VideoPlayerComponentState();
}

class _VideoPlayerComponentState extends State<VideoPlayerComponent> {
  late VideoPlayerController _controller;
  double _position = 0.0;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      widget.media,
    )..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});

        _controller.play();
      });
    _controller.addListener(() {
      if (_controller.value.position.inMilliseconds > 0) {
        setState(() {
          _position = double.parse((_controller.value.position.inMilliseconds /
                  _controller.value.duration.inMilliseconds)
              .toStringAsFixed(2));
        });
      }
    });

    _controller.setLooping(true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _controller.value.isInitialized
            ? SizedBox(
                child: VideoPlayer(_controller),
              )
            : Container(),
        Positioned(
            bottom: 70.0,
            left: 0.0,
            right: 0.0,
            child: VideoPlayerProgressBarComponent(
                progress: _position,
                onTap: (position) {
                  print(position);
                  _controller.seekTo(Duration(
                      milliseconds:
                          (_controller.value.duration.inMilliseconds * position)
                              .toInt()));
                  setState(
                    () => _position = position,
                  );
                }))
      ],
    );
  }
}
