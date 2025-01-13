import 'package:appdev/app_common_component/light%20text.dart';
import 'package:appdev/app_const/app_color.dart';
import 'package:circular_progress_stack/circular_progress_stack.dart';
import 'package:flutter/material.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({super.key});

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  bool _isHovered1 = false;
  bool _isHovered2 = false;
  bool _isHovered3 = false;
  bool _isHovered4 = false;
  bool _isHovered5 = false;
  bool _isHovered6 = false;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: w,
        height: h,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(color: AppColor.Black000000),
                  width: w * 0.20,
                  height: h,
                  child: Column(
                    children: [
                      Container(
                        width: w * 0.20,
                        height: h * 0.30,
                        // color: Colors.red,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MouseRegion(
                            onEnter: (_) => setState(() => _isHovered1 = true),
                            onExit: (_) => setState(() => _isHovered1 = false),
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 200),
                              width: _isHovered1 ? 40 : 30,
                              // Size increase on hover
                              height: _isHovered1 ? 40 : 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _isHovered1 ? Colors.red : Colors.grey,
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/image_1.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          MouseRegion(
                            onEnter: (_) => setState(() => _isHovered2 = true),
                            onExit: (_) => setState(() => _isHovered2 = false),
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 200),
                              width: _isHovered2 ? 40 : 30,
                              height: _isHovered2 ? 40 : 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _isHovered2 ? Colors.red : Colors.grey,
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/image_2.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          MouseRegion(
                            onEnter: (_) => setState(() => _isHovered3 = true),
                            onExit: (_) => setState(() => _isHovered3 = false),
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 200),
                              width: _isHovered3 ? 40 : 30,
                              height: _isHovered3 ? 40 : 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _isHovered3 ? Colors.red : Colors.grey,
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/image_3.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          MouseRegion(
                            onEnter: (_) => setState(() => _isHovered4 = true),
                            onExit: (_) => setState(() => _isHovered4 = false),
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 200),
                              width: _isHovered4 ? 40 : 30,
                              height: _isHovered4 ? 40 : 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _isHovered4 ? Colors.red : Colors.grey,
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/image_4.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          MouseRegion(
                            onEnter: (_) => setState(() => _isHovered5 = true),
                            onExit: (_) => setState(() => _isHovered5 = false),
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 200),
                              width: _isHovered5 ? 40 : 30,
                              height: _isHovered5 ? 40 : 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _isHovered5 ? Colors.red : Colors.grey,
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/image_5.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          MouseRegion(
                            onEnter: (_) => setState(() => _isHovered6 = true),
                            onExit: (_) => setState(() => _isHovered6 = false),
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 200),
                              width: _isHovered6 ? 40 : 30,
                              height: _isHovered6 ? 40 : 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: _isHovered6 ? Colors.red : Colors.grey,
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/image_6.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      menuContainer()
                    ],
                  ),
                ),
                Expanded(
                  child: Container(),
                )
              ],
            )
          ],
        ),
      ),
    );
  }


  Widget menuContainer(){

    return Row(
      children: [
        Icon(Icons.add_ic_call,color: Colors.white,),
        SizedBox(width: 50,),
        LightText(text: "Home")
      ],
    );
  }
}
