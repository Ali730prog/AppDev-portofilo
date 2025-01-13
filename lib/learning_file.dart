import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: FlipInX(
                    duration: Duration(seconds: 3), child: CommonContainer()))
          ],
        ),
      ),
    );
  }

  Widget CommonContainer() {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(07),
          border: Border.all(width: 1, color: Colors.white)),
      child: Center(
        child: Text(
          "Animation",
          style: GoogleFonts.inter(
              fontSize: 23, fontWeight: FontWeight.w600, color: Colors.black),
        ),
      ),
    );
  }
}
