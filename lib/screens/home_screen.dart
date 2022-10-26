import 'package:flutter/material.dart';
import 'package:flutterapi/components/video_player/video_player_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const VideoPlayerComponent(
        
      )
        );
    
  }
}