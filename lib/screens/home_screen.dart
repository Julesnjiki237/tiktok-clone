import 'package:flutter/material.dart';
import 'package:flutterapi/components/feed/feed_component.dart';
const List<Map<String, dynamic>> data = [
  {
    "profile": {"username": "Kameroon"},
    "media": "assets/videos/Videos1.mp4",
    "description": "Lorem ipsum dolor sit amet consectetur adipisicing elit."
  },
  {
    "profile": {"username": "Kevinho"},
    "media": "assets/videos/Videos2.mp4",
    "description":
        "molestiae quas vel sint commodi repudiandae consequuntur voluptatum laborumnumquam blanditiis harum quisquam eius sed odit "
  },
  {
    "profile": {"username": "Jules"},
    "media": "assets/videos/Videos3.mp4",
    "description":
        "optio, eaque rerum! Provident similique accusantium nemo autem. Veritatis obcaecati tenetur iure eius e"
  },
  {
    "profile": {"username": "Alan"},
    "media": "assets/videos/Videos4.mp4",
    "description":
        "eveniet aliquid culpa officia aut! Impedit sit sunt quaerat, odit,tenetur error"
  },
  {
    "profile": {"username": "Clark"},
    "media": "assets/videos/Videos5.mp4",
    "description":
        "harum nesciunt ipsum debitis quas aliquid. Reprehenderit,quia. Quo neque error repudiandae fuga? Ipsa laudantium"
  },
  {
    "profile": {"username": "Professeur"},
    "media": "assets/videos/Videos6.mp4",
    "description":
        "molestias eos sapiente officiis modi at sunt excepturi expedita sint"
  },
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
          scrollDirection: Axis.vertical,
          children: data.map((item) {
            return FeedComponent(item: item);
          }).toList()),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        onTap: (value) => {
          print(value),
        },
        backgroundColor: Colors.transparent,
        elevation: 0,
        unselectedItemColor: Colors.blue,
        selectedItemColor: Colors.black,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", ),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Discover"),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: "add"),
        BottomNavigationBarItem(icon: Icon(Icons.messenger), label: "Inbox"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Me"),
      ]),
    );
  }
}
