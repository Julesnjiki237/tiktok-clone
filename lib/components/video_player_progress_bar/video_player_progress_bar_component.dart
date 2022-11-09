import 'package:flutter/material.dart';

class VideoPlayerProgressBarComponent extends StatelessWidget {
  final double progress;
  const VideoPlayerProgressBarComponent({super.key, this.progress = 0});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (TapUpDetails details) {
        print(details.globalPosition.dx);
      },
      child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 4.0,
          ),
          child: Stack(
            children: [
              Container(
                height: 2,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.white.withOpacity(.2)),
              ),
              Container(
                height: 2,
                width: MediaQuery.of(context).size.width * progress,
                decoration: BoxDecoration(color: Colors.white.withOpacity(.9)),
              ),
            ],
          )),
    );
  }
}
