// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:appdev/app_common_component/light%20text.dart';
// import 'package:appdev/app_const/app_color.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class ContactScreenContainer extends StatefulWidget {
//   const ContactScreenContainer({super.key});
//
//   @override
//   State<ContactScreenContainer> createState() => _ContactScreenContainerState();
// }
//
// class _ContactScreenContainerState extends State<ContactScreenContainer> {
//   @override
//   Widget build(BuildContext context) {
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//
//     return Container(
//       width: w,
//       decoration: BoxDecoration(
//         color: AppColor.Black000000,
//       ),
//       child: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.only(left: w * 0.01),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: h * 0.07,
//               ),
//               TextLiquidFill(
//                 text: 'Contact',
//                 boxHeight: 50,
//                 boxWidth: 160,
//                 waveColor: Colors.blueAccent,
//                 textStyle: TextStyle(
//                   fontSize: 40.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(
//                 height: h * 0.01,
//               ),
//               Container(
//                 width: w * 0.09,
//                 height: h * 0.005,
//                 color: Colors.yellow,
//               ),
//               SizedBox(
//                 height: h * 0.03,
//               ),
//               Text(
//                   'Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga '
//                       'eum \n'
//                       'quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et'
//                       ' nemo qui\n impedit suscipit alias ea. Quia fugiat sit in iste officiis '
//                       'commodi quidem hic quas.',
//                   style: GoogleFonts.inter(
//                       fontSize: 15, color: AppColor.whiteFFFFFF)),
//               SizedBox(
//                 height: h * 0.07,
//               ),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Container(
//                       width: w * 0.30,
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           SizedBox(
//                             height: h * 0.07,
//                           ),
//                           contactDetailRow(h, w, "Address",
//                               "A108 Adam Street, New York, NY 535022"),
//                           SizedBox(
//                             height: h * 0.04,
//                           ),
//                           contactDetailRow(h, w, "Address",
//                               "A108 Adam Street, New York, NY 535022"),
//                           SizedBox(
//                             height: h * 0.04,
//                           ),
//                           contactDetailRow(h, w, "Address",
//                               "A108 Adam Street, New York, NY 535022"),
//                           Image.asset("assets/images/map.webp")
//                         ],
//                       )),
//                   Expanded(
//                       child: Container(
//                         padding: EdgeInsets.only(left: w * 0.03),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             SizedBox(
//                               height: h * 0.05,
//                             ),
//                             Container(
//                               width: w * 0.07,
//                               decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   border: Border.all(
//                                       width: 1, color: AppColor.Black000000)),
//                               child: TextField(
//                                 decoration: InputDecoration(),
//                               ),
//                             )
//                           ],
//                         ),
//                       ))
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget contactDetailRow(double h, double w, String title, String content) {
//     return Container(
//       height: h * 0.10,
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: Container(
//                 child: HoverImageContainer(
//                     imagePath: "assets/images/heart_image.png")),
//           ),
//           Spacer(),
//           Container(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 LightText(
//                   text: title,
//                   textColor: AppColor.whiteFFFFFF,
//                 ),
//                 LightText(
//                   text: content,
//                   textColor: AppColor.whiteFFFFFF,
//                   fontWeight: FontWeight.w500,
//                   fontSize: 16,
//                 ),
//               ],
//             ),
//           )
//         ],
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
//             color: _isHovered ? Colors.white : Colors.black,
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:appdev/app_common_component/light%20text.dart';
import 'package:appdev/app_const/app_color.dart';
import 'package:flutter/material.dart';

class ContactScreenContainer extends StatefulWidget {
  const ContactScreenContainer({super.key});

  @override
  State<ContactScreenContainer> createState() => _ContactScreenContainerState();
}

class _ContactScreenContainerState extends State<ContactScreenContainer> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;double h = MediaQuery.of(context).size.height;

    return Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
        color: AppColor.Black000000,
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: w * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              TextLiquidFill(
                text: 'Contact',
                boxHeight: 50,
                boxWidth: 160,
                waveColor: Colors.blueAccent,
                textStyle: TextStyle(
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Container(
                width: w * 0.09,
                height: 4,
                color: Colors.yellow,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Text(
                  'Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga '
                      'eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et'
                      ' nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis '
                      'commodi quidem hic quas.',
                  style: TextStyle(fontSize: 15, color: AppColor.whiteFFFFFF)),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.07,
                        ),
                        buildDetailCard(
                          iconPath: "assets/images/heart_image.png",
                          title: "Address",
                          detail:
                          "A108 Adam Street, New York, NY 535022",
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        buildDetailCard(
                          iconPath: "assets/images/heart_image.png",
                          title: "Email",
                          detail: "example@example.com",
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        buildDetailCard(
                          iconPath: "assets/images/heart_image.png",
                          title: "Phone",
                          detail: "+1 5589 55488 55",
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        Image.asset("assets/images/map.webp"),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(left: w * 0.03),
                      child: Column(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          ),
                          Container(
                            width: w * 0.7,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                width: 1,
                                color: AppColor.Black000000,
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDetailCard({
    required String iconPath,
    required String title,
    required String detail,
  }) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.10,
      child: Row(
        children: [
          HoverImageContainer(imagePath: iconPath),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LightText(
                text: title,
                textColor: AppColor.whiteFFFFFF,
              ),
              LightText(
                text: detail,
                textColor: AppColor.whiteFFFFFF,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

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
            color: _isHovered ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
