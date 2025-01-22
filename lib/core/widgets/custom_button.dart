import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:mvvm_practise/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.backgroundColor,
      required this.textColor,
      required this.buttonText,
      this.borderRadius});
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          buttonText,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
