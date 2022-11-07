import 'package:flutter/material.dart';

class ProfileComponent extends StatelessWidget {
  const ProfileComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            GestureDetector(
              onTap: () => print("go to user's profile"),
              child: const Padding(padding: 
              EdgeInsets.only(bottom: 8.0),
              child: Text("@username", style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
              ),
              )
              ),
            ),
           GestureDetector(
            onTap:() => print('Show more'),
            child:
            const Text("molestias eos sapiente officiis modi at sunt excepturi expedita sint? ",  style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.0,
              height: 1.5,
            ),
            maxLines: 2,
            ),
           )
          ],
        );
  }
}
