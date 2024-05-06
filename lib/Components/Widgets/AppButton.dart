import 'package:easy_car/Style/Colors/AppColors.dart';
import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final TextStyle style;

  const ResponsiveButton(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.style = const TextStyle()})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          width:
        MediaQuery.of(context).size.width * 0.8, // Adjust width as needed
          child: ElevatedButton(
            onPressed: () => onPressed(),
            child: Text(text, style: style),
            style:  ElevatedButton.styleFrom(
              primary: AppColors.primary,
            ),
          ),
        );
      },
    );
  }
}
