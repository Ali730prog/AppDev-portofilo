import 'package:appdev/app_screen/web_screen/web_screen.dart';
import 'package:flutter/material.dart';
main(){
  runApp(MaterialApp(home: AppDev(),));
}

class AppDev extends StatefulWidget {
  const AppDev({super.key});

  @override
  State<AppDev> createState() => _AppDevState();
}

class _AppDevState extends State<AppDev> {
  @override
  Widget build(BuildContext context) {
    return WebScreen();
  }
}
