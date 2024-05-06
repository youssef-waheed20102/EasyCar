import 'package:easy_car/Style/Colors/AppColors.dart';
import 'package:flutter/material.dart';

class ResponsiveText extends StatelessWidget {
  final String text;
  final double minFontSize;
  final double maxFontSize;
  final Color textColor;
  final FontWeight textFontWeight;
  final TextDecoration textDecoration;

  const ResponsiveText({
    Key? key,
    required this.text,
    this.minFontSize = 12.0,
    this.maxFontSize = 24.0,   this.textColor=AppColors.primary,   this.textFontWeight=FontWeight.normal,  this.textDecoration = TextDecoration.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double fontSize = constraints.maxWidth / text.length;

        // Ensure the font size is within min and max bounds
        fontSize = fontSize.clamp(minFontSize, maxFontSize);

        return Text(
          text,
          style: TextStyle(
            color: textColor,
              fontSize: fontSize,
            fontWeight: textFontWeight,
            decoration: textDecoration,

          ),
        );
      },
    );
  }
}