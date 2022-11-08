import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  final Map<String, dynamic> profile;
  const AvatarWidget({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        
        Padding(
          padding: const EdgeInsets.only(
            bottom: 12.0),
          child: GestureDetector(
      onTap: () => {print("go to user's profile")},
      child: Container(
          padding: const EdgeInsets.all(3.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Colors.white,
              width: 4.0,
            )
          ),
          child:  CircleAvatar(
      radius: 30.0,
      backgroundImage: NetworkImage(
        profile["avatar"]
      ),
    ))
    ),
        )
     ,
    GestureDetector(
      onTap: () => {print("follow")},
      child: const CircleAvatar(
      backgroundColor: Colors.pink,
      radius: 15.0,
      child: Icon(
        Icons.add,
        color: Colors.white,
        size: 20.0,),
     ),
     ) ],
    );
  }
}
