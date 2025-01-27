import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:appdev/app_common_component/light%20text.dart';
import 'package:appdev/app_const/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreenContainer extends StatefulWidget {
  const HomeScreenContainer({super.key});

  @override
  State<HomeScreenContainer> createState() => _HomeScreenContainerState();
}

class _HomeScreenContainerState extends State<HomeScreenContainer> {

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: SlideInUp(
        child: Container(
          width: w,
          height: h,
          decoration: BoxDecoration(
            color: AppColor.Black000000.withOpacity(0.5),
            image: DecorationImage(
              image: AssetImage("assets/images/hero-bg.jpg",),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding:  EdgeInsets.only(left: w*0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              children: [
                SlideInRight(
                  duration: Duration(seconds: 3),
                  child: Text('Ali Hasnain ',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                          fontSize: 44, color: AppColor.whiteFFFFFF)),
                ),
                Row(
                  children: [
                    SlideInUp(
                      duration: Duration(seconds: 3),
                      child: Text("I'm ",
                          style: GoogleFonts.inter(
                              fontSize: 44, color: AppColor.whiteFFFFFF)),
                    ),
                    BounceInRight(
                      duration: Duration(seconds: 3),
                      child: AnimatedTextKit(
                        displayFullTextOnTap: true,
                        stopPauseOnTap: true,
                        animatedTexts: [
                          TypewriterAnimatedText('Website Developer',
                              speed: Duration(milliseconds: 100),
                              textStyle: GoogleFonts.inter(
                                decorationStyle: TextDecorationStyle.solid,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColor.yellowFF9143,
                                  decorationThickness: 2,
                                  fontSize: 30, color: AppColor.whiteFFFFFF)),
                          TypewriterAnimatedText('Application Developer',
                              speed: Duration(milliseconds: 100),
                            
                              textStyle: GoogleFonts.inter(
                                  decorationStyle: TextDecorationStyle.solid,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColor.yellowFF9143,
                                  decorationThickness: 2,
                            
                                  fontSize: 30, color: AppColor.whiteFFFFFF)),
                        ],
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
