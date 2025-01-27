// ? SingleChildScrollView(
//     child: Container(
//       width: w,
//       height: h,
//       color: AppColor.Black000000,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           SizedBox(height: h * 0.07),
//           Text(
//             'Portofilo',
//             style: GoogleFonts.inter(
//               fontWeight: FontWeight.bold,
//               fontSize: 44,
//               color: AppColor.whiteFFFFFF,
//             ),
//           ),
//           SizedBox(height: h * 0.02),
//           Container(
//             width: w * 0.09,
//             height: h * 0.009,
//             color: Colors.white,
//           ),
//           SizedBox(height: h * 0.02),
//           Text(
//             'Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga '
//             'eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et'
//             ' nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis '
//             'commodi quidem hic quas.',
//             style: GoogleFonts.inter(
//               fontSize: 15,
//               color: AppColor.whiteFFFFFF,
//             ),
//           ),
//           SizedBox(height: h * 0.07),
//           TabBar(
//             controller: tabController,
//             indicatorColor: Colors.white,
//             labelColor: Colors.white,
//             tabs: [
//               Tab(text: "All"),
//               Tab(text: "Apps"),
//               Tab(text: "Websites"),
//             ],
//           ),
//           // Use Expanded to give TabBarView height
//           Expanded(
//             child: TabBarView(
//               controller: tabController,
//               children: [
//                 GridView.builder(
//                   itemCount: ServiceMap.length,
//                   gridDelegate:
//                       SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 3),
//                   itemBuilder: (context, index) {
//                     return InkWell(
//                       onTap: () {
//                         setState(() {
//                           is_project = true;
//                         });
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => ProjectDetail(
//                                       data: ServiceMap[index],
//                                     )));
//                       },
//                       child: Container(
//                         width: 400,
//                         height: 400,
//                         child:
//                             Image.asset(ServiceMap[index]['image'][0]),
//                       ),
//                     );
//                   },
//                 ),
//                 Center(
//                   child: Image.asset(
//                     "assets/images/andnowfit/image_1.jpg",
//                     fit: BoxFit.contain,
//                   ),
//                 ),
//                 Center(
//                   child: Image.asset(
//                     "assets/images/ecommerce/image_1.jpg",
//                     fit: BoxFit.contain,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     ),
//   )
// : Container(
//     child: Column(
//       children: [
//         Row(
//           children: [
//             Container(
//                 child: Image.asset(
//               data["image"][1],
//               width: 400,
//               height: 400,
//             )),
//             Container(
//               child: Column(
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                     ),
//                     width: 400,
//                     height: 400,
//                     child: Column(
//                       children: [
//                         LightText(
//                           text: "Project Information",
//                           textColor: AppColor.Black000000,
//                         ),
//                         Divider(),
//                         Row(
//                           children: [
//                             LightText(
//                               text: "Catergory",
//                               textColor: AppColor.Black000000,
//                             ),
//                             LightText(
//                               text: data['category'],
//                               textColor: AppColor.Black000000,
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             )
//           ],
//         )
//       ],
//     ),
//   );
// ;

List ecommerce = [
  "image_1.jpg",
  "image_2.jpg",
  "image_3.jpg",
  "image_4.jpg",
  "image_6.jpg",
  "image_7.jpg",
  "image_8.jpg",
  "image_9.jpg",
  "image_10.jpg",
];
List dreamhouse = [
  "image_1.png",
  "image_3.png",
  "image_4.png",
  "image_5.png",
  "image_6.png",
  "image_7.png",
  "image_7.jpg",
  "image_.jpg",
  "image_9.jpg",
  "image_10.jpg",
  "image_11.jpg",
  "image_12.jpg",
];
List epayapp = [
  "image_1.jpg",
  "image_2.jpg",
  "image_3.jpg",
  "image_4.jpg",
  "image_5.jpg",
  "image_6.jpg",
  "image_7.jpg",
  "image_.jpg",
  "image_9.jpg",
  "image_10.jpg",
  "image_11.jpg"
];
List andnowfit = [
  "image_1.jpg",
  "image_2.jpg",
  "image_3.jpg",
  "image_4.jpg",
  "image_5.jpg",
  "image_6.jpg"
];
List fitit = [
  "image_1.jpg",
  "image_2.jpg",
  "image_3.jpg",
  "image_4.jpg",
  "image_5.jpg",
  "image_6.jpg",
  "image_7.jpg",
  "image_8.jpg",
  "image_9.jpg",
  "image_10.jpg"
];
List foodwebsite = [
  "image_1.png",
  "image_2.png",
  "image_3.png",
  "image_4.png",
  "image_5.png",
  "image_6.png",
  "image_7.png",
  "image_8.png",
  "image_9.png",
];
List lmsapp = [
  "image_1.jpg",
  "image_2.jpg",
  "image_3.jpg",
  "image_4.jpg",
  "image_5.jpg",
  "image_6.jpg",
  "image_7.jpg",
  "image_8.jpg",
  "image_9.jpg",
  "image_10.jpg",
  "image_11.jpg",
  "image_12.jpg",
];
List singlefoodwebsite = [
  "image_1.png",
  "image_2.png",
  "image_3.png",
  "image_4.png",
  "image_5.png",
  "image_6.png",
  "image_7.png",
  "image_8.png",
];
List travel_website = [
  "image_1.png",
  "image_2.png",
  "image_3.png",
  "image_4.png",
  "image_5.png",
  "image_6.png",
  "image_7.png",
  "image_8.png",
];
