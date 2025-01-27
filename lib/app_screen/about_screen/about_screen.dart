import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:appdev/app_common_component/light%20text.dart';
import 'package:appdev/app_const/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutScreenContainer extends StatefulWidget {
  const AboutScreenContainer({super.key});

  @override
  State<AboutScreenContainer> createState() => _AboutScreenContainerState();
}

class _AboutScreenContainerState extends State<AboutScreenContainer> {
  double progress = 1;
  List data = [
    {
      "name": "Birthday",
      "value": "2 March 2008",
    },
    {
      "name": "age",
      "value": "18",
    },
    {
      "name": "Website",
      "value": "ahcodeboy.site",
    },
    {
      "name": "Degree",
      "value": "ICS",
    },
    {
      "name": "Phone",
      "value": "+923079321614",
    },
    {
      "name": "Email",
      "value": "AliHsnain799@gmail.com",
    },
    {
      "name": "City",
      "value": "BWN Punjab",
    },
    {
      "name": "Freelance",
      "value": "Available",
    },
  ];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: SlideInDown(
        duration: Duration(seconds: 3),
        child: Container(
          width: w,
          height: h,
          decoration: BoxDecoration(
            color: AppColor.whiteFFFFFF,
          ),
          child: Padding(
            padding: EdgeInsets.only(left: w * 0.01),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: h * 0.05),
                ZoomIn(
                  duration: Duration(seconds: 8),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      WavyAnimatedText(
                        speed: Duration(milliseconds: 900),
                         "About",textStyle: GoogleFonts.inter(
                        fontSize: 50.0,
                        color: AppColor.Black000000,
                        fontWeight: FontWeight.bold,
                      ),
                      ),

                    ],
                    isRepeatingAnimation: false,
                  ),


                  // LightText(
                  //   text: "About",
                  //   fontSize: 50.0,
                  //   textColor: AppColor.Black000000,
                  //   fontWeight: FontWeight.bold,
                  // ),
                ),
                SizedBox(
                  width: w * 0.12,
                  child: TweenAnimationBuilder<double>(
                    tween: Tween(begin: 0.0, end: progress),
                    duration: Duration(seconds: 2),
                    builder: (context, value, _) => LinearProgressIndicator(
                      value: value,
                      backgroundColor: Colors.grey[300],
                      color: Colors.blue,
                      minHeight: h * 0.009,
                    ),
                  ),
                ),
                SizedBox(height: h * 0.03),
                Padding(
                  padding: EdgeInsets.only(right: w * 0.02),
                  child:   AnimatedTextKit(
                    displayFullTextOnTap: true,
                    stopPauseOnTap: true,
                    animatedTexts: [
                      TypewriterAnimatedText("Hello, I am Ali Hasnain. As a skilled Flutter application developer, I specialize in creating high-quality, cross-platform mobile applications for both iOS and Android. My focus is on ensuring seamless user experiences and efficient performance."
                          "Whether it'"
                          "s integrating APIs, optimizing app performance, or implementing the latest design trends, I am dedicated to crafting apps that stand out in today’s competitive market. Let’s create something amazing together!",
                          speed: Duration(milliseconds: 100),
                          textStyle: GoogleFonts.inter(
                              decorationStyle: TextDecorationStyle.solid,
                              decoration: TextDecoration.underline,
                              decorationColor: AppColor.yellowFF9143,
                              decorationThickness: 1,
                              fontSize: 30, color: AppColor.Black000000)),

                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
              // textStyle: GoogleFonts.inter(
              //     decorationStyle: TextDecorationStyle.solid,
              //     decoration: TextDecoration.underline,
              //     decorationColor: AppColor.yellowFF9143,
              //     decorationThickness: 2,
              //     fontSize: 30, color: AppColor.whiteFFFFFF)
                      ),


                  // Text(
                  //   "Hello, I am Ali Hasnain. As a skilled Flutter application developer, I specialize in creating high-quality, cross-platform mobile applications for both iOS and Android. My focus is on ensuring seamless user experiences and efficient performance."
                  //   "Whether it'"
                  //   "s integrating APIs, optimizing app performance, or implementing the latest design trends, I am dedicated to crafting apps that stand out in today’s competitive market. Let’s create something amazing together!",
                  //   style: GoogleFonts.inter(
                  //     fontSize: 18,
                  //     color: AppColor.Black000000,
                  //     // color: AppColor.whiteFFFFFF,
                  //   ),
                  // ),
                SizedBox(height: h * 0.07),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: w * 0.30,
                      height: h * 0.50,
                      child: Center(
                        child: Image.asset(
                          "assets/images/hero-bg.jpg",
                          fit: BoxFit.fitHeight,
                          width: w * 0.30,
                          height: h * 0.50,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: w * 0.01),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            LightText(
                              text:
                                  "app builder, flutter app creation,mobile app developer",
                              fontWeight: FontWeight.w600,
                              textColor: Colors.black,
                              fontSize: 18,
                            ),
                            SizedBox(height: h * 0.01),
                            LightText(
                              text:
                                  "'Quidem. Sit sint consectetur velit. Quisquam quos quisquam "
                                  "cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis "
                                  "commodi quidem hic quas.",
                              fontWeight: FontWeight.w500,
                              textColor: Colors.black,
                              // textColor: Colors.white,
                              fontSize: 15,
                            ),
                            SizedBox(height: h * 0.05),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: w * 0.01),
                              child: Column(children: [
                                Row(
                                  children: [
                                    Container(
                                      width: w * 0.24,
                                      child: Column(
                                        children: [
                                          detailWidget(
                                              name: "Birthday",
                                              des: "02 March 2008"),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          detailWidget(des: "18", name: "Age"),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: w * 0.24,
                                      child: Column(
                                        children: [
                                          detailWidget(
                                              name: "Website",
                                              des: "AliHsnian799@gmail.com"),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Column(
                                        children: [
                                          detailWidget(
                                              des: "Ics", name: "Degree"),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: w * 0.24,
                                      child: Column(
                                        children: [
                                          detailWidget(
                                              name: "Phone",
                                              des: "+923079321614"),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // width: w*0.40,
                                      child: Column(
                                        children: [
                                          detailWidget(
                                              des: "AliHsnain799@gmail.com",
                                              name: "Email"),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: w * 0.24,
                                      child: Column(
                                        children: [
                                          detailWidget(
                                              name: "City", des: "BWN Punjab"),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // width: w*0.40,
                                      child: Column(
                                        children: [
                                          detailWidget(
                                              des: "Availble",
                                              name: "Freelance:"),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget detailWidget({
    required String name,
    required String des,
  }) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Padding(
      padding:  EdgeInsets.only(bottom: h*0.03),
      child: Row(
        children: [
          Icon(Icons.arrow_forward_ios_outlined, color: Colors.red),
          SizedBox(width: w * 0.01),
          LightText(
            text: name,
            textColor: AppColor.Black000000,
            fontSize: 16,
          ),
          SizedBox(
            width: w * 0.02,
          ),
          LightText(
            text: des,
            textColor: AppColor.Black000000,
            fontSize: 12,
          ),
        ],
      ),
    );
  }
}
