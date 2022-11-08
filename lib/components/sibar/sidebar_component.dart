import 'package:flutter/material.dart';
import 'package:flutterapi/widgets/avatar_widget.dart';
import 'package:flutterapi/widgets/comment_widget.dart';
import 'package:flutterapi/widgets/like_widget.dart';
import 'package:flutterapi/widgets/share_widget.dart';

class SidebarComponent extends StatelessWidget {
  final Map<String, dynamic> item;
  const SidebarComponent({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child:  AvatarWidget(
           profile: item['profile'],
          ),
        ),
         Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: LikeWidget(
            count: item["likecount"],
          ),
        ),
         Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: CommentWidget(
            comment: item['commentcount'],
          ),
        ),
         ShareWidget(
          share: item['sharecount'],
        )
      ],
    );
  }
}
