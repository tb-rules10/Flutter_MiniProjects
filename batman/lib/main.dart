import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white12,
        appBar: AppBar(
          title: const Text("I'm Vengeance"),
        ),
        body: const Center(
          child: Image(
            image: NetworkImage(
                "https://cdn.wallpapersafari.com/42/86/xbfrMv.jpg"),
          ),
        ),
      ),
    );
  }
}
