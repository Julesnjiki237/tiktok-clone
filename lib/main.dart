import 'package:flutter/material.dart';
import 'package:flutterapi/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Api',
        theme: ThemeData(textTheme: GoogleFonts.notoSansAdlamTextTheme()),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen());
  }
}
