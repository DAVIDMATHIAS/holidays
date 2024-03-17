import 'package:flutter/material.dart';
import 'pages/welcome_page.dart';

void main() {
  // WelcomePage welcomePage = WelcomePage(itemCount: itemCount, images: images);
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home:
            WelcomePage(itemCount: 3, images: ["1.jpeg", "2.jpeg", "4.jpeg"]));
  }
}
