import 'package:flutter/material.dart';
import 'package:flutterapi/widgets/avatar_widget.dart';
import 'package:flutterapi/widgets/comment_widget.dart';
import 'package:flutterapi/widgets/like_widget.dart';
import 'package:flutterapi/widgets/share_widget.dart';

class SidebarComponent extends StatelessWidget {
  const SidebarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: AvatarWidget(),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: LikeWidget(),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: CommentWidget(),
          ),
          ShareWidget()
      ],
    );
  }
}