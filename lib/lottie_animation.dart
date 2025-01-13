import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lottie Animation Example")),
      body: Column(
        children: [
          LottieBuilder.asset("assets/images/mshk-image-to-lottie.json")
        ],
      ),
    );
  }
}
