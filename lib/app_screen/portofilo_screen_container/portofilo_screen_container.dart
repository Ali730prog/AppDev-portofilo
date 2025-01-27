import 'package:appdev/app_common_component/light%20text.dart';
import 'package:appdev/app_const/app_color.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PortofiloScreenContainer extends StatefulWidget {
  const PortofiloScreenContainer({
    super.key,
  });

  @override
  State<PortofiloScreenContainer> createState() =>
      _PortofiloScreenContainerState();
}

class _PortofiloScreenContainerState extends State<PortofiloScreenContainer>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  bool is_project = false;

  List ServiceMap = [
    {
      "image": [
        "assets/images/ecommerce/image_1.jpg",
        "assets/images/ecommerce/image_2.jpg",
        "assets/images/ecommerce/image_3.jpg",
        "assets/images/ecommerce/image_4.jpg",
        "assets/images/ecommerce/image_6.jpg",
        "assets/images/ecommerce/image_7.jpg",
        "assets/images/ecommerce/image_8.jpg",
        "assets/images/ecommerce/image_9.jpg",
        "assets/images/ecommerce/image_10.jpg",
      ],
      "type": "app",
      "category": "App Development",
      "client": "Self Learning",
      "project_data": "3 March, 2024",
      "Main title": "Complete Auth Section of Ecommerce App",
      "des":
          "Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.",
    },
    {
      "image": [
        "assets/images/ecommerce/image_1.jpg",
        "assets/images/ecommerce/image_2.jpg",
        "assets/images/ecommerce/image_3.jpg",
        "assets/images/ecommerce/image_4.jpg",
        "assets/images/ecommerce/image_6.jpg",
        "assets/images/ecommerce/image_7.jpg",
        "assets/images/ecommerce/image_8.jpg",
        "assets/images/ecommerce/image_9.jpg",
        "assets/images/ecommerce/image_10.jpg",
      ],
      "type": "app",
      "category": "Website Development",
      "client": "Self Learning",
      "project_data": "01 March, 2020",
      "Main title": "Exercitationem repudiandae officiis neque suscipit",
      "des":
          "Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.",
    },
    {
      "image": [
        "assets/images/ecommerce/image_1.jpg",
        "assets/images/ecommerce/image_2.jpg",
        "assets/images/ecommerce/image_3.jpg",
        "assets/images/ecommerce/image_4.jpg",
        "assets/images/ecommerce/image_6.jpg",
        "assets/images/ecommerce/image_7.jpg",
        "assets/images/ecommerce/image_8.jpg",
        "assets/images/ecommerce/image_9.jpg",
        "assets/images/ecommerce/image_10.jpg",
      ],
      "type": "app",
      "category": "Website Development",
      "client": "Self Learning",
      "project_data": "01 March, 2020",
      "Main title": "Exercitationem repudiandae officiis neque suscipit",
      "des":
          "Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.",
    },
    {
      "image": [
        "assets/images/ecommerce/image_1.jpg",
        "assets/images/ecommerce/image_2.jpg",
        "assets/images/ecommerce/image_3.jpg",
        "assets/images/ecommerce/image_4.jpg",
        "assets/images/ecommerce/image_6.jpg",
        "assets/images/ecommerce/image_7.jpg",
        "assets/images/ecommerce/image_8.jpg",
        "assets/images/ecommerce/image_9.jpg",
        "assets/images/ecommerce/image_10.jpg",
      ],
      "type": "app",
      "category": "Website Development",
      "client": "Self Learning",
      "project_data": "01 March, 2020",
      "Main title": "Exercitationem repudiandae officiis neque suscipit",
      "des":
          "Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.",
    },
    {
      "image": [
        "assets/images/ecommerce/image_1.jpg",
        "assets/images/ecommerce/image_2.jpg",
        "assets/images/ecommerce/image_3.jpg",
        "assets/images/ecommerce/image_4.jpg",
        "assets/images/ecommerce/image_6.jpg",
        "assets/images/ecommerce/image_7.jpg",
        "assets/images/ecommerce/image_8.jpg",
        "assets/images/ecommerce/image_9.jpg",
        "assets/images/ecommerce/image_10.jpg",
      ],
      "type": "app",
      "category": "Website Development",
      "client": "Self Learning",
      "project_data": "01 March, 2020",
      "Main title": "Exercitationem repudiandae officiis neque suscipit",
      "des":
          "Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.",
    },
    {
      "image": [
        "assets/images/ecommerce/image_1.jpg",
        "assets/images/ecommerce/image_2.jpg",
        "assets/images/ecommerce/image_3.jpg",
        "assets/images/ecommerce/image_4.jpg",
        "assets/images/ecommerce/image_6.jpg",
        "assets/images/ecommerce/image_7.jpg",
        "assets/images/ecommerce/image_8.jpg",
        "assets/images/ecommerce/image_9.jpg",
        "assets/images/ecommerce/image_10.jpg",
      ],
      "type": "app",
      "category": "Website Development",
      "client": "Self Learning",
      "project_data": "01 March, 2020",
      "Main title": "Exercitationem repudiandae officiis neque suscipit",
      "des":
          "Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.",
    },
    {
      "image": [
        "assets/images/ecommerce/image_1.jpg",
        "assets/images/ecommerce/image_2.jpg",
        "assets/images/ecommerce/image_3.jpg",
        "assets/images/ecommerce/image_4.jpg",
        "assets/images/ecommerce/image_6.jpg",
        "assets/images/ecommerce/image_7.jpg",
        "assets/images/ecommerce/image_8.jpg",
        "assets/images/ecommerce/image_9.jpg",
        "assets/images/ecommerce/image_10.jpg",
      ],
      "type": "app",
      "category": "Website Development",
      "client": "Self Learning",
      "project_data": "01 March, 2020",
      "Main title": "Exercitationem repudiandae officiis neque suscipit",
      "des":
          "Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.",
    },
    {
      "image": [
        "assets/images/ecommerce/image_1.jpg",
        "assets/images/ecommerce/image_2.jpg",
        "assets/images/ecommerce/image_3.jpg",
        "assets/images/ecommerce/image_4.jpg",
        "assets/images/ecommerce/image_6.jpg",
        "assets/images/ecommerce/image_7.jpg",
        "assets/images/ecommerce/image_8.jpg",
        "assets/images/ecommerce/image_9.jpg",
        "assets/images/ecommerce/image_10.jpg",
      ],
      "type": "app",
      "category": "Website Development",
      "client": "Self Learning",
      "project_data": "01 March, 2020",
      "Main title": "Exercitationem repudiandae officiis neque suscipit",
      "des":
          "Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.",
    },
    {
      "image": [
        "assets/images/ecommerce/image_1.jpg",
        "assets/images/ecommerce/image_2.jpg",
        "assets/images/ecommerce/image_3.jpg",
        "assets/images/ecommerce/image_4.jpg",
        "assets/images/ecommerce/image_6.jpg",
        "assets/images/ecommerce/image_7.jpg",
        "assets/images/ecommerce/image_8.jpg",
        "assets/images/ecommerce/image_9.jpg",
        "assets/images/ecommerce/image_10.jpg",
      ],
      "type": "app",
      "category": "Website Development",
      "client": "Self Learning",
      "project_data": "01 March, 2020",
      "Main title": "Exercitationem repudiandae officiis neque suscipit",
      "des":
          "Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.",
    },
    {
      "image": [
        "assets/images/ecommerce/image_1.jpg",
        "assets/images/ecommerce/image_2.jpg",
        "assets/images/ecommerce/image_3.jpg",
        "assets/images/ecommerce/image_4.jpg",
        "assets/images/ecommerce/image_6.jpg",
        "assets/images/ecommerce/image_7.jpg",
        "assets/images/ecommerce/image_8.jpg",
        "assets/images/ecommerce/image_9.jpg",
        "assets/images/ecommerce/image_10.jpg",
      ],
      "type": "app",
      "category": "Website Development",
      "client": "Self Learning",
      "project_data": "01 March, 2020",
      "Main title": "Exercitationem repudiandae officiis neque suscipit",
      "des":
          "Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.",
    },
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return porofotilorpage();
  }

  Widget porofotilorpage() {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Container(
        width: w,
        height: h,
        color: AppColor.Black000000,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: h * 0.07),
            Text(
              'Portofilo',
              style: GoogleFonts.inter(
                fontWeight: FontWeight.bold,
                fontSize: 44,
                color: AppColor.whiteFFFFFF,
              ),
            ),
            SizedBox(height: h * 0.02),
            Container(
              width: w * 0.09,
              height: h * 0.009,
              color: Colors.white,
            ),
            SizedBox(height: h * 0.02),
            Text(
              'Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga '
              'eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et'
              ' nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis '
              'commodi quidem hic quas.',
              style: GoogleFonts.inter(
                fontSize: 15,
                color: AppColor.whiteFFFFFF,
              ),
            ),
            SizedBox(height: h * 0.07),
            TabBar(
              controller: tabController,
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              tabs: [
                Tab(text: "All"),
                Tab(text: "Apps"),
                Tab(text: "Websites"),
              ],
            ),
            // Use Expanded to give TabBarView height
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  GridView.builder(
                    itemCount: ServiceMap.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          setState(() {
                            is_project = true;
                          });
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => projectdetail()));
                        },
                        child: Container(
                          width: 400,
                          height: 400,
                          child: Image.asset(ServiceMap[index]['image'][0]),
                        ),
                      );
                    },
                  ),
                  Center(
                    child: Image.asset(
                      "assets/images/andnowfit/image_1.jpg",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Center(
                    child: Image.asset(
                      "assets/images/ecommerce/image_1.jpg",
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget projectdetail() {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Container(
                  child: Image.asset(
                // data["image"][1],
                "",
                width: 400,
                height: 400,
              )),
              Container(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      width: 400,
                      height: 400,
                      child: Column(
                        children: [
                          LightText(
                            text: "Project Information",
                            textColor: AppColor.Black000000,
                          ),
                          Divider(),
                          Row(
                            children: [
                              LightText(
                                text: "Catergory",
                                textColor: AppColor.Black000000,
                              ),
                              LightText(
                                // text: data['category'],
                                text: "",
                                textColor: AppColor.Black000000,
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class pass extends StatefulWidget {
  const pass({super.key});

  @override
  State<pass> createState() => _passState();
}

class _passState extends State<pass> with SingleTickerProviderStateMixin {
  late TabController tabController;

  List ServiceMap1 = [
    {
      "image": [
        "assets/images/ecommerce/image_1.jpg",
        "assets/images/ecommerce/image_2.jpg",
        "assets/images/ecommerce/image_3.jpg",
        "assets/images/ecommerce/image_4.jpg",
        "assets/images/ecommerce/image_6.jpg",
        "assets/images/ecommerce/image_7.jpg",
        "assets/images/ecommerce/image_8.jpg",
        "assets/images/ecommerce/image_9.jpg",
        "assets/images/ecommerce/image_10.jpg",
      ],
      "type": "app",
      "category": "App Development",
      "client": "Self Learning",
      "project_data": "03 March, 2024",
      "Main title": "Complete Auth Section of ecommerce App",
      "des":
          "Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.",
    },
    {
      "image": [
        "assets/images/andnowfit/image_1.jpg",
        "assets/images/andnowfit/image_2.jpg",
        "assets/images/andnowfit/image_3.jpg",
        "assets/images/andnowfit/image_4.jpg",
        "assets/images/andnowfit/image_5.jpg",
        "assets/images/andnowfit/image_6.jpg",
        "assets/images/andnowfit/image_7.jpg",
        "assets/images/andnowfit/image_8.jpg",
        "assets/images/andnowfit/image_9.jpg",
        "assets/images/andnowfit/image_10.jpg",
        "assets/images/andnowfit/image_11.jpg",
        "assets/images/andnowfit/image_12.jpg",
      ],
      "type": "app",
      "category": "App Development",
      "client": "Self Learning",
      "project_data": "01 March, 2020",
      "Main title": "Complete Fitness App",
      "des":
          "Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.",
    },
    {
      "image": [
        "assets/images/dreamhousewebstie/image_1.png",
        "assets/images/dreamhousewebstie/image_3.png",
        "assets/images/dreamhousewebstie/image_4.png",
        "assets/images/dreamhousewebstie/image_5.png",
        "assets/images/dreamhousewebstie/image_6.png",
        "assets/images/dreamhousewebstie/image_7.png",
      ],
      "type": "website",
      "category": "Website Development",
      "client": "Self Learning",
      "project_data": "6 January 2020",
      "Main title": "Dream House Website",
      "des":
          "Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.",
    },
    {
      "image": [
        "assets/images/epayapp/image_1.jpg",
        "assets/images/epayapp/image_2.jpg",
        "assets/images/epayapp/image_3.jpg",
        "assets/images/epayapp/image_4.jpg",
        "assets/images/epayapp/image_5.jpg",
        "assets/images/epayapp/image_6.jpg",
        "assets/images/epayapp/image_7.jpg",
        "assets/images/epayapp/image_8.jpg",
        "assets/images/epayapp/image_9.jpg",
        "assets/images/epayapp/image_10.jpg",
        "assets/images/epayapp/image_11.jpg",
      ],
      "type": "app",
      "category": "App Development",
      "client": "Self Learning",
      "project_data": "20 Dec, 2024",
      "Main title": "Translation Complete App",
      "des":
          "Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.",
    },
    {
      "image": [
        "assets/images/fitit/image_1.jpg",
        "assets/images/fitit/image_2.jpg",
        "assets/images/fitit/image_3.jpg",
        "assets/images/fitit/image_4.jpg",
        "assets/images/fitit/image_6.jpg",
        "assets/images/fitit/image_7.jpg",
        "assets/images/fitit/image_8.jpg",
        "assets/images/fitit/image_9.jpg",
        "assets/images/fitit/image_10.jpg",
      ],
      "type": "app",
      "category": "App Development",
      "client": "Self Learning",
      "project_data": "09 Nov, 2024",
      "Main title": "Construction App",
      "des":
          "Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.",
    },
    {
      "image": [
        "assets/images/foodwebsite/image_1.png",
        "assets/images/foodwebsite/image_2.png",
        "assets/images/foodwebsite/image_3.png",
        "assets/images/foodwebsite/image_4.png",
        "assets/images/foodwebsite/image_6.png",
        "assets/images/foodwebsite/image_7.png",
        "assets/images/foodwebsite/image_8.png",
        "assets/images/foodwebsite/image_9.png",
      ],
      "type": "website",
      "category": "Website Development",
      "client": "Self Learning",
      "project_data": "01 March, 2020",
      "Main title": "Food Website",
      "des":
          "Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.",
    },
    {
      "image": [
        "assets/images/lmsapp/image_1.jpg",
        "assets/images/lmsapp/image_2.jpg",
        "assets/images/lmsapp/image_3.jpg",
        "assets/images/lmsapp/image_4.jpg",
        "assets/images/lmsapp/image_6.jpg",
        "assets/images/lmsapp/image_7.jpg",
        "assets/images/lmsapp/image_8.jpg",
        "assets/images/lmsapp/image_9.jpg",
        "assets/images/lmsapp/image_10.jpg",
        "assets/images/lmsapp/image_11.jpg",
        "assets/images/lmsapp/image_12.jpg",
      ],
      "type": "app",
      "category": "App Development",
      "client": "Self Learning",
      "project_data": "27 Oct, 2024",
      "Main title": "Learning App",
      "des":
          "Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.",
    },
    {
      "image": [
        "assets/images/singlefoodwebsite/image_1.png",
        "assets/images/singlefoodwebsite/image_2.png",
        "assets/images/singlefoodwebsite/image_3.png",
        "assets/images/singlefoodwebsite/image_4.png",
        "assets/images/singlefoodwebsite/image_6.png",
        "assets/images/singlefoodwebsite/image_7.png",
        "assets/images/singlefoodwebsite/image_8.png",
      ],
      "type": "website",
      "category": "Website Development",
      "client": "Self Learning",
      "project_data": "10 Jan, 2024",
      "Main title": "Food website landing page",
      "des":
          "Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.",
    },
    {
      "image": [
        "assets/images/travel_website/image_1.png",
        "assets/images/travel_website/image_2.png",
        "assets/images/travel_website/image_3.png",
        "assets/images/travel_website/image_4.png",
        "assets/images/travel_website/image_6.png",
        "assets/images/travel_website/image_7.png",
        "assets/images/travel_website/image_8.png",
      ],
      "type": "website",
      "category": "Website Development",
      "client": "Self Learning",
      "project_data": "01 March, 2020",
      "Main title": "Travel Website",
      "des":
          "Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.",
    },
    {
      "image": [
        "assets/images/ecommerce/image_1.jpg",
        "assets/images/ecommerce/image_2.jpg",
        "assets/images/ecommerce/image_3.jpg",
        "assets/images/ecommerce/image_4.jpg",
        "assets/images/ecommerce/image_6.jpg",
        "assets/images/ecommerce/image_7.jpg",
        "assets/images/ecommerce/image_8.jpg",
        "assets/images/ecommerce/image_9.jpg",
        "assets/images/ecommerce/image_10.jpg",
      ],
      "type": "Website",
      "category": "Website Development",
      "client": "Self Learning",
      "project_data": "01 March, 2020",
      "Main title": "Exercitationem repudiandae officiis neque suscipit",
      "des":
          "Autem ipsum nam porro corporis rerum. Quis eos dolorem eos itaque inventore commodi labore quia quia. Exercitationem repudiandae officiis neque suscipit non officia eaque itaque enim. Voluptatem officia accusantium nesciunt est omnis tempora consectetur dignissimos. Sequi nulla at esse enim cum deserunt eius.",
    },
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  bool is_project = true;
  int projectcount = 0;
  double progress = 1;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return is_project
        ? SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: w * 0.01),
              width: w,
              height: h,
              color: AppColor.whiteFFFFFF,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: h * 0.05),
                  LightText(
                    text: "Portfolio",
                    fontSize: 50.0,
                    textColor: AppColor.Black000000,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    width: w * 0.16,
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
                    child: Text(
                      "Welcome to my portfolio! I am Ali Hasnain, a skilled Flutter developer. I have successfully built and designed stunning mobile applications and websites, ensuring top-notch performance and user-friendly experiences. My work highlights include seamless API integrations, responsive designs, and robust app functionalities. Explore my portfolio to see how I bring ideas to life!",
                      style: GoogleFonts.inter(
                          fontSize: 15,
                          color: AppColor.Black000000,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: h * 0.04),
                  TabBar(
                    controller: tabController,
                    indicatorColor: Colors.black,
                    labelColor: Colors.red,
                    automaticIndicatorColorAdjustment: true,
                    indicatorWeight: 03,
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerHeight: 5,
                    labelStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                    fontSize: 23,
                    color: Colors.red),
                    tabs: [
                      Tab(text: "All",),
                      Tab(text: "Apps"),
                      Tab(text: "Websites"),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        GridView.builder(
                          itemCount: ServiceMap1.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                              // crossAxisSpacing: 20,
                              // mainAxisSpacing: 20
                              ),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                setState(() {
                                  is_project = false;
                                  projectcount = index;
                                });
                              },
                              child: Center(
                                child: Container(
                                  width: 400,
                                  height: 200,
                                  color: Colors.red,
                                  child:
                                      Center(child: Image.asset(ServiceMap1[index]['image'][0],fit: BoxFit.contain,)),
                                ),
                              ),
                            );
                          },
                        ),
                        Center(
                          child: Image.asset(
                            "assets/images/andnowfit/image_1.jpg",
                            fit: BoxFit.contain,
                          ),
                        ),
                        Center(
                          child: Image.asset(
                            "assets/images/ecommerce/image_1.jpg",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        : ProjectDetail(
            project: ServiceMap1[projectcount],
            height: h,
            width: w,
          );
  }
}

class ProjectDetail extends StatefulWidget {
  final Map project;
  final double height;
  final double width;

  const ProjectDetail(
      {super.key,
      required this.project,
      required this.height,
      required this.width});

  @override
  State<ProjectDetail> createState() => _ProjectDetailState();
}

class _ProjectDetailState extends State<ProjectDetail> {
  final PageController _pageController = PageController();
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    List images = widget.project["image"];
    // List images2=["assets/images/skype.png","assets/images/skype.png"];
    print(" print images data ${widget.project}");

    return Container(
        color: Colors.black,
        height: widget.height,
        width: widget.width,
        child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              width: widget.width,
              height: 70,
              color: Colors.black,
              child: Center(
                  child: LightText(
                text: "Project Detail",
                textColor: AppColor.whiteFFFFFF,
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ))),
          Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    width: 500,
                    height: 500,
                    color: Colors.white,
                    padding: EdgeInsets.only(left: 120),
                    child: Column(
                      children: [
                        Container(
                            child: Column(
                          children: [
                            CarouselSlider(
                              items: images
                                  .map((item) => Center(
                                        child: Container(
                                          margin: EdgeInsets.only(left: 10),
                                          width: 400,
                                          height: 129,
                                          decoration: BoxDecoration(),
                                          child: Center(
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Center(
                                                child: Image.asset(item,
                                                    // fit: BoxFit.fill,
                                                    width: 340,
                                                    height: 160),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ))
                                  .toList(),
                              options: CarouselOptions(
                                autoPlay: true,
                                enlargeCenterPage: true,
                                autoPlayCurve: Curves.easeInOut,
                                onPageChanged: (index, reason) {
                                  setState(() {
                                    selectedindex = index;
                                  });
                                },
                                viewportFraction: 1.0,
                                scrollPhysics: BouncingScrollPhysics(),
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: images.asMap().entries.map((entry) {
                                return GestureDetector(
                                  onTap: () {
                                    _pageController.jumpToPage(entry.key);
                                  },
                                  child: Container(
                                    margin: EdgeInsets.symmetric(horizontal: 5),
                                    width: 12.0,
                                    height: 12.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: selectedindex == entry.key
                                            ? Color(0xffFFA3B3)
                                            : Color(0xffDEDBDB)),
                                  ),
                                );
                              }).toList(),
                            ),
                          ],
                        )
                            // Image.asset(height: 400, ),
                            )
                      ],
                    )),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width: 150,
                        height: 250,
                        child: Column(
                          children: [
                            LightText(
                              text: "Project Information",
                              textColor: AppColor.Black000000,
                            ),
                            Divider(),
                            Row(
                              children: [
                                LightText(text: "Category:"),
                                LightText(
                                    text: "${widget.project['category']}"),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ])
        ])));
  }
}
