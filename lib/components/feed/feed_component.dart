import 'package:flutter/cupertino.dart';
import 'package:flutterapi/components/profile/profile_component.dart';
import 'package:flutterapi/components/sibar/sidebar_component.dart';
import 'package:flutterapi/components/video_player/video_player_component.dart';

class FeedComponent extends StatelessWidget {
  const FeedComponent({super.key, required this.item});

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        VideoPlayerComponent(
          media: item['media'])
      ,
        Positioned(
          bottom: 100.0,
          left: 20.0,
          right: 100.0,
          child: 
          ProfileComponent(item: item)
        ),
         Positioned(
          top: 300.0,
          right: 20.0,
          child: SidebarComponent(item: item,))
      ],
    
      );
  }
}
