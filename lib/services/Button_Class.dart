import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double width;
  final double height;
  final double borderRadius;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final TextStyle? textStyle;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = const Color(0xff6053f8),
    this.width = double.infinity,
    this.height = 50,
    this.borderRadius = 12,
    this.textColor = Colors.white,
    this.fontSize = 16,
    this.fontWeight = FontWeight.w600,
    this.textStyle, // allow custom style
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          elevation: 3,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: textStyle ??
              TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontWeight: fontWeight,
              ),
        ),
      ),
    );
  }
}
