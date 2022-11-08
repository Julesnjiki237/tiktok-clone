import 'package:flutter/material.dart';
import 'package:flutterapi/widgets/avatar_widget.dart';

class SidebarComponent extends StatelessWidget {
  const SidebarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
          AvatarWidget(),
      ],
    );
  }
}