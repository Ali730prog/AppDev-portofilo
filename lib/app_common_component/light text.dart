import 'package:appdev/app_const/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LightText extends StatelessWidget {
  final String text;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextDecoration? textDecoration;
  final TextDirection? textDirection;

  const LightText({
    super.key,
    required this.text,
    this.textColor = AppColor.whiteFFFFFF,
    this.fontSize,
    this.fontWeight = FontWeight.bold,
    this.textDecoration,
    this.textDirection = TextDirection.ltr,
  });

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var finalFontSize = fontSize ?? w * 0.02 / 1.1;

    return Text(
      text,
      textDirection: textDirection,
      style: GoogleFonts.raleway(
        fontSize: finalFontSize,
        fontWeight: fontWeight,
        color: textColor,
        decoration: textDecoration,
      ),
    );
  }
}
