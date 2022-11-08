import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ShareWidget extends StatelessWidget {
  final int share;
  const ShareWidget({super.key, required this.share});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: ClipOval(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 10.0,
                sigmaY: 10.0,
              ),
              child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.1),
                  ),
                  child: Center(
                    child: IconButton(
                      onPressed: () => {print("Partager la video")},
                      icon: const Icon(Icons.share),
                      color: Colors.white,
                    ),
                  )),
            ),
          ),
        ),
        Text(
          NumberFormat.compact().format(share),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            letterSpacing: .8,
          ),
        )
      ],
    );
  }
}
