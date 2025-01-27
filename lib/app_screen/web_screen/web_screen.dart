// import 'package:appdev/app_common_component/light%20text.dart';
// import 'package:appdev/app_const/app_color.dart';
// import 'package:circular_progress_stack/circular_progress_stack.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class WebScreen extends StatefulWidget {
//   const WebScreen({super.key});
//
//   @override
//   State<WebScreen> createState() => _WebScreenState();
// }
//
// class _WebScreenState extends State<WebScreen> {
//   @override
//   Widget build(BuildContext context) {
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: Container(
//         width: w,
//         height: h,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(color: AppColor.Black000000),
//                     width: w * 0.20,
//                     height: h,
//                     child: SingleChildScrollView(
//                       child: Column(
//                         children: [
//                           SizedBox(height: h*0.03,),
//                           Container(
//                             width: w * 0.20,
//                             height: h * 0.30,
//                             child: Stack(
//                               children: [
//                                 Center(
//                                   child: AnimatedStackCircularProgressBar(
//                                     size: 150,
//                                     progressStrokeWidth: 5,
//                                     backStrokeWidth: 5,
//                                     startAngle: 0,
//                                     backColor: const Color(0xffD7DEE7),
//                                     bars: [
//                                       AnimatedBarValue(
//                                         barColor: Colors.red,
//                                         barValues: 100,
//                                         fullProgressColors: Colors.red,
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 Center(
//                                   child: Container(
//                                     width: 135,
//                                     height: 135,
//                                     decoration: BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       image: DecorationImage(
//                                         image: AssetImage(
//                                             "assets/images/AliHasanain.jpg"),
//                                         fit: BoxFit.cover,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           LightText(text: "Ali Hasnain"),
//                           SizedBox(height: h*0.03,),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               HoverImageContainer(imagePath: "assets/images/twitter.png"),
//                               HoverImageContainer(imagePath: "assets/images/facebook_!.png"),
//                               HoverImageContainer(imagePath: "assets/images/instagram.webp"),
//                               HoverImageContainer(imagePath: "assets/images/skype.png"),
//                               HoverImageContainer(imagePath: "assets/images/linkedin.png"),
//                             ],
//                           ),
//                           menuContainer(text: 'Home',icon: CupertinoIcons.home),
//                           menuContainer(text: 'About',icon: CupertinoIcons.person),
//                           menuContainer(text: 'Resume',icon: CupertinoIcons.doc_plaintext),
//                           menuContainer(text: 'Portfolio',icon: Icons.image),
//                           menuContainer(text: 'Services',icon: CupertinoIcons.list_dash),
//                           menuContainer(text: 'Dropdown',icon: CupertinoIcons.list_number_rtl),
//                           menuContainer(text: 'Contact',icon: CupertinoIcons.mail),
//                         ],
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(),
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget menuContainer({
//     required String text,
//     required IconData icon,
// }) {
//     return Container(
//       padding: EdgeInsets.only(left: 15.0),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//        Icon(icon,color: Colors.white,size: 20,),
//           SizedBox(width: 15.0,),
//           LightText(text: text,fontWeight: FontWeight.w400,)
//         ],
//       ),
//       height: 55,
//
//     );
//   }
// }
//
// class HoverImageContainer extends StatefulWidget {
//   final String imagePath;
//
//   const HoverImageContainer({Key? key, required this.imagePath})
//       : super(key: key);
//
//   @override
//   State<HoverImageContainer> createState() => _HoverImageContainerState();
// }
//
// class _HoverImageContainerState extends State<HoverImageContainer> {
//   bool _isHovered = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       onEnter: (_) => setState(() => _isHovered = true),
//       onExit: (_) => setState(() => _isHovered = false),
//       child: AnimatedContainer(
//         duration: Duration(milliseconds: 200),
//         width: _isHovered ? 50 : 40, // Increased size
//         height: _isHovered ? 50 : 40,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: _isHovered ? Colors.red : Colors.grey,
//         ),
//         child: Center(
//           child: Image.asset(
//             widget.imagePath,
//             width: 25, // Adjusted for better fit
//             height: 25,
//             fit: BoxFit.contain,
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:appdev/app_common_component/light%20text.dart';
// import 'package:appdev/app_const/app_color.dart';
//
// import 'package:circular_progress_stack/circular_progress_stack.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class WebScreen extends StatefulWidget {
//   const WebScreen({super.key});
//
//   @override
//   State<WebScreen> createState() => _WebScreenState();
// }
//
// class _WebScreenState extends State<WebScreen> {
//   String selectedContainer = "Home";
//   double dragOffset = 0.0;
//
//   @override
//   Widget build(BuildContext context) {
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: Container(
//         width: w,
//         height: h,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(color: AppColor.Black000000),
//                     width: w * 0.20,
//                     height: h,
//                     child: SingleChildScrollView(
//                       child: Column(
//                         children: [
//                           SizedBox(height: h * 0.03),
//                           Container(
//                             width: w * 0.20,
//                             height: h * 0.30,
//                             child: Stack(
//                               children: [
//                                 Center(
//                                   child: AnimatedStackCircularProgressBar(
//                                     size: 150,
//                                     progressStrokeWidth: 5,
//                                     backStrokeWidth: 5,
//                                     startAngle: 0,
//                                     backColor: const Color(0xffD7DEE7),
//                                     bars: [
//                                       AnimatedBarValue(
//                                         barColor: Colors.red,
//                                         barValues: 100,
//                                         fullProgressColors: Colors.red,
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 Center(
//                                   child: Container(
//                                     width: 135,
//                                     height: 135,
//                                     decoration: BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       image: DecorationImage(
//                                         image: AssetImage(
//                                             "assets/images/AliHasanain.jpg"),
//                                         fit: BoxFit.cover,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           LightText(text: "Ali Hasnain"),
//                           SizedBox(height: h * 0.03),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                             children: [
//                               HoverImageContainer(
//                                   imagePath: "assets/images/twitter.png"),
//                               HoverImageContainer(
//                                   imagePath: "assets/images/facebook_!.png"),
//                               HoverImageContainer(
//                                   imagePath: "assets/images/instagram.webp"),
//                               HoverImageContainer(
//                                   imagePath: "assets/images/skype.png"),
//                               HoverImageContainer(
//                                   imagePath: "assets/images/linkedin.png"),
//                             ],
//                           ),
//                           SizedBox(
//                             height: h * 0.02,
//                           ),
//                           menuContainer(
//                               text: 'Home', icon: CupertinoIcons.home),
//                           menuContainer(
//                               text: 'About', icon: CupertinoIcons.person),
//                           menuContainer(
//                               text: 'Resume',
//                               icon: CupertinoIcons.doc_plaintext),
//                           menuContainer(text: 'Portfolio', icon: Icons.image),
//                           menuContainer(
//                               text: 'Services', icon: CupertinoIcons.list_dash),
//                           menuContainer(
//                               text: 'Dropdown',
//                               icon: CupertinoIcons.list_number_rtl),
//                           menuContainer(
//                               text: 'Contact', icon: CupertinoIcons.mail),
//                         ],
//                       ),
//                     ),
//                   ),
//                   GestureDetector(
//                     onVerticalDragUpdate: (details) {
//                       setState(() {
//                         dragOffset -= details.primaryDelta!;
//                       });
//                     },
//                     child: Container(
//                       width: 5,
//                       height: h,
//                       color: Colors.black,
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                         height: h + dragOffset,
//                         color: Colors.grey.shade200,
//                         child: Column(
//                           children: [
//                             Text("FGHFDDSFSDASDAs")
//                           ],
//                         )),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget menuContainer({
//     required String text,
//     required IconData icon,
//   }) {
//     bool isSelected = selectedContainer == text;
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedContainer = text;
//         });
//       },
//       child: Container(
//         height: 45,
//         padding: EdgeInsets.only(left: 15.0),
//         color: isSelected ? Colors.white : Colors.black,
//         // color: isSelected ? Colors.red : Colors.black,
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Icon(
//               icon,
//               color: isSelected ? Colors.black : Colors.white,
//               size: 20,
//             ),
//             SizedBox(width: 15.0),
//             LightText(
//               text: text,
//               fontWeight: FontWeight.w400,
//               textColor: isSelected ? Colors.black : Colors.white,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class HoverImageContainer extends StatefulWidget {
//   final String imagePath;
//
//   const HoverImageContainer({Key? key, required this.imagePath})
//       : super(key: key);
//
//   @override
//   State<HoverImageContainer> createState() => _HoverImageContainerState();
// }
//
// class _HoverImageContainerState extends State<HoverImageContainer> {
//   bool _isHovered = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       onEnter: (_) => setState(() => _isHovered = true),
//       onExit: (_) => setState(() => _isHovered = false),
//       child: AnimatedContainer(
//         duration: Duration(milliseconds: 200),
//         width: _isHovered ? 50 : 40,
//         height: _isHovered ? 50 : 40,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: _isHovered ? Colors.red : Colors.grey,
//         ),
//         child: Center(
//           child: Image.asset(
//             widget.imagePath,
//             width: 25,
//             height: 25,
//             fit: BoxFit.contain,
//           ),
//         ),
//       ),
//     );
//   }
//   Widget AboutContainer(){
//     return Container(
//       child: Column(
//         children: [
//           Text("This is my Home Container",style: TextStyle(color: Colors.black),),
//         ],
//       ),
//     );
//   }
//
//   Widget HomeContainer(){
//     return Container(
//       child: Column(
//         children: [
//           Text("This is my About Container",style: TextStyle(color: Colors.black),),
//         ],
//       ),
//     );
//   }
//
//   Widget ResumeContainer(){
//     return Container(
//       child: Column(
//         children: [
//           Text("This is my Resume Container",style: TextStyle(color: Colors.black),),
//         ],
//       ),
//     );
//   }
//
//   Widget PortofiloContainer(){
//     return Container(
//       child: Column(
//         children: [
//           Text("This is my Portofilo Container",style: TextStyle(color: Colors.black),),
//         ],
//       ),
//     );
//   }
//
//   Widget ServicesContainer(){
//     return Container(
//       child: Column(
//         children: [
//           Text("This is my Services Container",style: TextStyle(color: Colors.black),),
//         ],
//       ),
//     );
//   }
//
//   Widget DropDownContainer(){
//     return Container(
//       child: Column(
//         children: [
//           Text("This is my DropDown Container",style: TextStyle(color: Colors.black),),
//         ],
//       ),
//     );
//   }
//
//   Widget ContactContainer(){
//     return Container(
//       child: Column(
//         children: [
//           Text("This is my Contact Container",style: TextStyle(color: Colors.black),),
//         ],
//       ),
//     );
//   }
//
// }


import 'package:appdev/app_common_component/light%20text.dart';
import 'package:appdev/app_const/app_color.dart';
import 'package:appdev/app_screen/about_screen/about_screen.dart';
import 'package:appdev/app_screen/contact_screen/contact_screen.dart';
import 'package:appdev/app_screen/home_screen/home_screen.dart';
import 'package:appdev/app_screen/portofilo_screen_container/portofilo_screen_container.dart';
import 'package:appdev/app_screen/service_screen/services_screen.dart';
import 'package:circular_progress_stack/circular_progress_stack.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({super.key});

  @override

  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  bool _is_project = false;
  String selectedContainer = "Home";
  double dragOffset = 0.0;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(color: AppColor.Black000000),
                  width: w * 0.20,
                  height: h,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: h * 0.03),
                        Container(
                          width: w * 0.20,
                          height: h * 0.30,
                          child: Stack(
                            children: [
                              Center(
                                child: AnimatedStackCircularProgressBar(
                                  size: 150,
                                  progressStrokeWidth: 5,
                                  backStrokeWidth: 5,
                                  startAngle: 0,
                                  backColor: const Color(0xffD7DEE7),
                                  bars: [
                                    AnimatedBarValue(
                                      barColor: Colors.red,
                                      barValues: 100,
                                      fullProgressColors: Colors.red,
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: Container(
                                  width: 135,
                                  height: 135,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/AliHasanain.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        LightText(text: "Ali Hasnain"),
                        SizedBox(height: h * 0.03),
                        Container(
                          height: h * 0.08,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              HoverImageContainer(
                                  imagePath: "assets/images/twitter.png"),
                              HoverImageContainer(
                                  imagePath: "assets/images/facebook_!.png"),
                              HoverImageContainer(
                                  imagePath: "assets/images/instagram.webp"),
                              HoverImageContainer(
                                  imagePath: "assets/images/skype.png"),
                              HoverImageContainer(
                                  imagePath: "assets/images/linkedin.png"),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: h * 0.02,
                        ),
                        menuContainer(
                            text: 'Home', icon: CupertinoIcons.home),
                        menuContainer(
                            text: 'About', icon: CupertinoIcons.person),
                        menuContainer(
                            text: 'Resume',
                            icon: CupertinoIcons.doc_plaintext),
                        menuContainer(text: 'Portfolio', icon: Icons.image),
                        menuContainer(
                            text: 'Services', icon: CupertinoIcons.list_dash),
                        menuContainer(
                            text: 'Dropdown',
                            icon: CupertinoIcons.list_number_rtl),
                        menuContainer(
                            text: 'Contact', icon: CupertinoIcons.mail),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onVerticalDragUpdate: (details) {
                    setState(() {
                      dragOffset -= details.primaryDelta!;
                    });
                  },
                  child: Container(
                    width: 5,
                    height: h,
                    color: Colors.black,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: h + dragOffset,
                    color: Colors.grey.shade200,
                    child: Column(
                      children: [
                        if (selectedContainer == "Home")
                          HomeScreenContainer(),
                        if (selectedContainer == "About")
                          AboutScreenContainer(),
                        if (selectedContainer == "Resume") ResumeContainer(),
                        if (selectedContainer == "Portfolio")
                          pass(),
                        if (selectedContainer == "Services")
                          ServicesScreen2(),
                        if (selectedContainer == "Dropdown")
                          DropDownContainer(),
                        if (selectedContainer == "Contact")
                          SingleChildScrollView(child: ContactScreenContainer())
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget menuContainer({
    required String text,
    required IconData icon,
  }) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    bool isSelected = selectedContainer == text;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedContainer = text;
        });
      },
      child: Container(
        height: 45,
        width: w,
        padding: EdgeInsets.only(left: 15.0),
        color: isSelected ? Colors.white : Colors.black,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              color: isSelected ? Colors.black : Colors.white,
              size: 20,
            ),
            SizedBox(width: 15.0),
            LightText(
              text: text,
              fontWeight: FontWeight.w400,
              textColor: isSelected ? Colors.black : Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget AboutContainer() {
    return Container(
      child: Column(
        children: [
          Text("This is my About Container"),
        ],
      ),
    );
  }

  Widget HomeContainer() {
    return Container(
      child: Column(
        children: [
          Text("This is my Home Container"),
        ],
      ),
    );
  }

  Widget ResumeContainer() {
    return Container(
      child: Column(
        children: [
          Text("This is my Resume Container"),
        ],
      ),
    );
  }

  Widget PortofiloContainer() {
    return Container(
      child: Column(
        children: [
          Text("This is my Portfolio Container"),
        ],
      ),
    );
  }

  Widget ServicesContainer() {
    return Container(
      child: Column(
        children: [
          Text("This is my Services Container"),
        ],
      ),
    );
  }

  Widget DropDownContainer() {
    return Container(
      child: Column(
        children: [
          Text("This is my DropDown Container"),
        ],
      ),
    );
  }

  Widget ContactContainer() {
    return Container(
      child: Column(
        children: [
          Text("This is my Contact Container"),
        ],
      ),
    );
  }
}

// class PortofiloScreenContainer {
// }


class HoverImageContainer extends StatefulWidget {
  final String imagePath;

  const HoverImageContainer({Key? key, required this.imagePath})
      : super(key: key);

  @override
  State<HoverImageContainer> createState() => _HoverImageContainerState();
}

class _HoverImageContainerState extends State<HoverImageContainer> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: _isHovered ? 50 : 40,
        height: _isHovered ? 50 : 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _isHovered ? Colors.red : Colors.grey,
        ),
        child: Center(
          child: Image.asset(
            widget.imagePath,
            width: 25,
            height: 25,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}

bool isproject = false;


// import 'package:appdev/app_common_component/light%20text.dart';
// import 'package:appdev/app_screen/about_screen/about_screen.dart';
// import 'package:appdev/app_screen/contact_screen/contact_screen.dart';
// import 'package:appdev/app_screen/home_screen/home_screen.dart';
// import 'package:appdev/app_screen/service_screen/services_screen.dart';
// import 'package:circular_progress_stack/circular_progress_stack.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
//
//
// class WebScreen extends StatefulWidget {
//   @override
//   _WebScreenState createState() => _WebScreenState();
// }
//
// class _WebScreenState extends State<WebScreen> {
//   double dragOffset = 0;
//   String selectedContainer = "Home";
//   bool isproject = false;
//
//   @override
//   Widget build(BuildContext context) {
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//
//     return Scaffold(
//       body: Container(
//         width: w,
//         height: h,
//         child: SingleChildScrollView(
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(color: Colors.black),
//                     width: w * 0.20,
//                     height: h,
//                     child: SingleChildScrollView(
//                       child: Column(
//                         children: [
//                           SizedBox(height: h * 0.03),
//                           Container(
//                             width: w * 0.20,
//                             height: h * 0.30,
//                             child: Stack(
//                               children: [
//                                 Center(
//                                   child: AnimatedStackCircularProgressBar(
//                                     size: 150,
//                                     progressStrokeWidth: 5,
//                                     backStrokeWidth: 5,
//                                     startAngle: 0,
//                                     backColor: const Color(0xffD7DEE7),
//                                     bars: [
//                                       AnimatedBarValue(
//                                         barColor: Colors.red,
//                                         barValues: 100,
//                                         fullProgressColors: Colors.red,
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 Center(
//                                   child: Container(
//                                     width: 135,
//                                     height: 135,
//                                     decoration: BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       image: DecorationImage(
//                                         image: AssetImage(
//                                             "assets/images/AliHasanain.jpg"),
//                                         fit: BoxFit.cover,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           LightText(text: "Ali Hasnain"),
//                           SizedBox(height: h * 0.03),
//                           Container(
//                             height: h * 0.08,
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                               children: [
//                                 HoverImageContainer(
//                                     imagePath: "assets/images/twitter.png"),
//                                 HoverImageContainer(
//                                     imagePath: "assets/images/facebook_!.png"),
//                                 HoverImageContainer(
//                                     imagePath: "assets/images/instagram.webp"),
//                                 HoverImageContainer(
//                                     imagePath: "assets/images/skype.png"),
//                                 HoverImageContainer(
//                                     imagePath: "assets/images/linkedin.png"),
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height: h * 0.02,
//                           ),
//                           menuContainer(
//                               text: 'Home', icon: CupertinoIcons.home),
//                           menuContainer(
//                               text: 'About', icon: CupertinoIcons.person),
//                           menuContainer(
//                               text: 'Resume',
//                               icon: CupertinoIcons.doc_plaintext),
//                           menuContainer(text: 'Portfolio', icon: Icons.image),
//                           menuContainer(
//                               text: 'Services', icon: CupertinoIcons.list_dash),
//                           menuContainer(
//                               text: 'Dropdown',
//                               icon: CupertinoIcons.list_number_rtl),
//                           menuContainer(
//                               text: 'Contact', icon: CupertinoIcons.mail),
//                         ],
//                       ),
//                     ),
//                   ),
//                   GestureDetector(
//                     onVerticalDragUpdate: (details) {
//                       setState(() {
//                         dragOffset -= details.primaryDelta!;
//                       });
//                     },
//                     child: Container(
//                       width: 5,
//                       height: h,
//                       color: Colors.black,
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       height: h + dragOffset,
//                       color: Colors.grey.shade200,
//                       child: SingleChildScrollView(
//                         child: Column(
//                           children: [
//                             if (selectedContainer == "Home")
//                               HomeScreenContainer(),
//                             if (selectedContainer == "About")
//                               AboutScreenContainer(),
//                             if (selectedContainer == "Resume")
//                               ResumeContainer(),
//                             if (selectedContainer == "Portfolio")
//                               PortfolioScreenContainer(),
//                             if (selectedContainer == "Services")
//                               ServicesScreen2(),
//                             if (selectedContainer == "Dropdown")
//                               DropDownContainer(),
//                             if (selectedContainer == "Contact")
//                               ContactScreenContainer(),
//                             if (isproject) ProjectSection(),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//
//   }
//   Widget ContactContainer() {
//     return Container(
//       child: Column(
//         children: [
//           Text("This is my Contact Container"),
//         ],
//       ),
//     );
//   } Widget DropDownContainer() {
//     return Container(
//       child: Column(
//         children: [
//           Text("This is my Drop Down Container"),
//         ],
//       ),
//     );
//   }
//   Widget ResumeContainer() {
//     return Container(
//       child: Column(
//         children: [
//           Text("This is my Resume Container"),
//         ],
//       ),
//     );
//   }
//
//
//   Widget PortfolioScreenContainer() {
//     return Container(
//       child: Column(
//         children: [
//           Text("This is my Portfolio Screen Container"),
//         ],
//       ),
//     );
//   }
//   Widget menuContainer({
//     required String text,
//     required IconData icon,
// }) {
//     return Container(
//       padding: EdgeInsets.only(left: 15.0),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//        Icon(icon,color: Colors.white,size: 20,),
//           SizedBox(width: 15.0,),
//           LightText(text: text,fontWeight: FontWeight.w400,)
//         ],
//       ),
//       height: 55,
//
//     );
//   }
//
//
//
//
//   Widget ProjectSection() {
//     return Container(
//       padding: const EdgeInsets.all(20),
//       color: Colors.blueAccent,
//       child: Column(
//         children: [
//           LightText(
//             text: "Project Section",
//             textColor: Colors.white,
//             fontWeight: FontWeight.bold,
//             fontSize: 24,
//           ),
//           SizedBox(height: 10),
//           Text(
//             "This section appears based on the isproject variable.",
//             style: TextStyle(color: Colors.white),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
//
// class HoverImageContainer extends StatefulWidget {
//   final String imagePath;
//
//   const HoverImageContainer({Key? key, required this.imagePath})
//       : super(key: key);
//
//   @override
//   State<HoverImageContainer> createState() => _HoverImageContainerState();
// }
//
// class _HoverImageContainerState extends State<HoverImageContainer> {
//   bool _isHovered = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       onEnter: (_) => setState(() => _isHovered = true),
//       onExit: (_) => setState(() => _isHovered = false),
//       child: AnimatedContainer(
//         duration: Duration(milliseconds: 200),
//         width: _isHovered ? 50 : 40,
//         height: _isHovered ? 50 : 40,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: _isHovered ? Colors.red : Colors.grey,
//         ),
//         child: Center(
//           child: Image.asset(
//             widget.imagePath,
//             width: 25,
//             height: 25,
//             fit: BoxFit.contain,
//             color: _isHovered ? Colors.white : Colors.black,
//           ),
//         ),
//       ),
//     );
//   }
// }
