// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:day_pilot/src/constants/app_colors.dart';
import 'package:day_pilot/src/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Color? buttonColor;
  final Color? textColor;
  final VoidCallback onPressed;
  final int elevation;
  final int height;
  final ButtonWidth size;
  final bool hasBorderRadius;
  const CustomElevatedButton({
    Key? key,
    required this.text,
    this.buttonColor,
    this.textColor,
    required this.onPressed,
    this.elevation = 0,
    this.height = 50,
    this.size = ButtonWidth.large,
    this.hasBorderRadius = true,
  }) : super(key: key);

  buttonWidth(ButtonWidth size) {
    switch (size) {
      case ButtonWidth.small:
        return .3.sw;
      case ButtonWidth.medium:
        return .5.sw;
      case ButtonWidth.large:
      default:
        return double.infinity;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.toDouble(),
      width: buttonWidth(size),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: elevation.toDouble(),
          backgroundColor: textColor ?? AppColors.primaryColor,
          foregroundColor: buttonColor ?? Colors.white,
          textStyle: Theme.of(context).textTheme.bodyLarge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              hasBorderRadius ? 8.r : 0,
            ),
          ),
        ),
        child: Text(
          text,
        ),
      ),
    );
  }
}
