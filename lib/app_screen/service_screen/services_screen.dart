// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:appdev/app_common_component/light%20text.dart';
// import 'package:appdev/app_const/app_color.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class ServiceScreenContainer extends StatefulWidget {
//   const ServiceScreenContainer({super.key});
//
//   @override
//   State<ServiceScreenContainer> createState() => _ServiceScreenContainerState();
// }
//
// class _ServiceScreenContainerState extends State<ServiceScreenContainer> {
//   List Service = [
//     {
//       "image": "assets/images/heart_image.png",
//       "name": "Website Development",
//       "des":
//           "Hello, my name is Ali Hasnain. I am a skilled full-stack website and mobile app developer."
//     },
//     {
//       "image": "assets/images/AliHasanain.jpg",
//       "name": "Application Development",
//       "des":
//           "Hello, my name is Ali Hasnain. I am a skilled full-stack website and mobile app developer."
//     },
//     {
//       "image": "assets/images/lock_image.png",
//       "name": "Deployment App",
//       "des":
//           "Hello, my name is Ali Hasnain. I am a skilled full-stack website and mobile app developer."
//     },
//     {
//       "image": "assets/images/msg_image.png",
//       "name": "Reskin App",
//       "des":
//           "Hello, my name is Ali Hasnain. I am a skilled full-stack website and mobile app developer."
//     },
//     {
//       "image": "assets/images/profile_pic.png",
//       "name": "Api Testing & integration",
//       "des":
//           "Hello, my name is Ali Hasnain. I am a skilled full-stack website and mobile app developer."
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//     return SingleChildScrollView(
//       child: Container(
//         width: w,
//         height: h,
//         decoration: BoxDecoration(
//           color: AppColor.Black000000,
//         ),
//         child: Padding(
//           padding: EdgeInsets.only(left: w * 0.01),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.start,
//             // mainAxisSize: MainAxisSize.min,
//             children: [
//               SizedBox(
//                 height: h * 0.07,
//               ),
//               TextLiquidFill(
//                 text: 'Service',
//                 boxHeight: 50,
//                 boxWidth: 140,
//                 waveColor: Colors.blueAccent,
//                 textStyle: TextStyle(
//                   fontSize: 40.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               // Text('About',
//               //     style: GoogleFonts.inter(
//               //         fontWeight: FontWeight.bold,
//               //         fontSize: 44,
//               //         color: AppColor.whiteFFFFFF)),
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
//                   'eum \n'
//                   'quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et'
//                   ' nemo qui\n impedit suscipit alias ea. Quia fugiat sit in iste officiis '
//                   'commodi quidem hic quas.',
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
//                     // color: Colors.red,
//                     width: w * 0.30,
//                     height: h * 0.50,
//                     child: Center(
//                       child: Image.asset(
//                         "assets/images/hero-bg.jpg",
//                         fit: BoxFit.fitHeight,
//                         width: w * 0.30,
//                         height: h * 0.50,
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                       child: Container(
//                     padding: EdgeInsets.only(left: w * 0.03),
//                     // color: Colors.green,
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         SizedBox(
//                           height: h * 0.05,
//                         ),
//                         LightText(
//                           text: "Ui /UX designer or develoepr in the flutter",
//                           fontWeight: FontWeight.w500,
//                           textColor: Colors.white,
//                           fontSize: 15,
//                         ),
//                         SizedBox(
//                           height: h * 0.03,
//                         ),
//                         LightText(
//                           text:
//                               "'quidem. Sit sint consectetur velit. Quisquam quos quisquam "
//                               "cupiditate. Et"
//                               " nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis "
//                               "commodi quidem hic quas.",
//                           fontWeight: FontWeight.w500,
//                           textColor: Colors.white,
//                           fontSize: 15,
//                         ),
//                         SizedBox(
//                           height: h * 0.05,
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(right: w * 0.10),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               detailWidget(),
//                               detailWidget(),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: h * 0.05,
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(right: w * 0.10),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               detailWidget(),
//                               detailWidget(),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: h * 0.05,
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(right: w * 0.10),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               detailWidget(),
//                               detailWidget(),
//                             ],
//                           ),
//                         ),
//                         SizedBox(
//                           height: h * 0.05,
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(right: w * 0.10),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               detailWidget(),
//                               detailWidget(),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ))
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget detailWidget() {
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//     return Row(
//       children: [
//         Icon(
//           Icons.arrow_forward_ios_outlined,
//           color: Colors.white,
//         ),
//         SizedBox(
//           width: w * 0.01,
//         ),
//         LightText(
//           text: "Birthday:",
//           textColor: AppColor.whiteFFFFFF,
//           fontSize: 16,
//         ),
//         SizedBox(
//           width: w * 0.02,
//         ),
//         LightText(
//           text: "1 May 1995",
//           textColor: AppColor.whiteFFFFFF,
//           fontSize: 12,
//         ),
//       ],
//     );
//   }
//   Widget servicesWidget(){
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//     return Row(
//       children: [
//         Container(
//           child: HoverImageContainer(imagePath: Service[index]['image'].toString()),
//         ),
//         Container(
//           child: Column(
//             children: [
//               LightText(text: Service['name']),
//               SizedBox(
//                 height: h*0.02,
//               ),
//               LightText(text: Service['des']),
//             ],
//           ),
//         )
//       ],
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
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:appdev/app_common_component/light%20text.dart';
import 'package:flutter/material.dart';

class ServicesScreen2 extends StatelessWidget {
  ServicesScreen2({Key? key}) : super(key: key);

  final List<Map<String, String>> services = [
    {
      'image': 'assets/images/profile_pic.png',
      'name': 'Web Development',
      'des': 'Professional web development services tailored to your business needs.',
    },
    {
      'image': 'assets/images/lock_image.png',
      'name': 'Mobile Development',
      'des': 'High-quality mobile apps for Android and iOS platforms.',
    },
    {
      'image': 'assets/images/msg_image.png',
      'name': 'UI/UX Design',
      'des': 'Creative and user-friendly designs for a seamless experience.',
    },
    {
      'image': 'assets/images/linkedin.png',
      'name': 'Testing and api integration',
      'des': 'Professional web development services tailored to your business needs.',
    },
    {
      'image': 'assets/images/skype.png',
      'name': 'Depoment',
      'des': 'High-quality mobile apps for Android and iOS platforms.',
    },
    {
      'image': 'assets/images/twitter.png',
      'name': 'backend development',
      'des': 'Creative and user-friendly designs for a seamless experience.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return
     SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: w * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: h * 0.05),
              TextLiquidFill(
                text: 'Service',
                boxHeight: 50,
                boxWidth: 140,
                waveColor: Colors.blueAccent,
                textStyle: TextStyle(
                  fontSize:40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: h * 0.05),
              Column(
                children: services.map((service) {
                  int index = services.indexOf(service);
                  return servicesWidget(context, index);
                }).toList(),
              ),
            ],
          ),
        ),
    );
  }

  Widget servicesWidget(BuildContext context, int index) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(vertical: h * 0.02),
      child: Row(
        children: [
          HoverImageContainer(imagePath: services[index]['image']!),
          SizedBox(width: w * 0.02),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LightText(
                  text: services[index]['name']!,
                  fontSize: 18,
                  textColor: Colors.white,
                ),
                SizedBox(height: h * 0.01),
                LightText(
                  text: services[index]['des']!,
                  fontSize: 14,
                  textColor: Colors.grey[400]!,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HoverImageContainer extends StatelessWidget {
  final String imagePath;
  const HoverImageContainer({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      child: Image.asset(
        imagePath,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
    );
  }
}
