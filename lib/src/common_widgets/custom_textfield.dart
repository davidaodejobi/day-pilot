import 'dart:async';

import 'package:day_pilot/src/constants/app_colors.dart';
import 'package:day_pilot/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends HookWidget {
  final TextEditingController controller;
  final String hintText;
  final Duration obscureTimerDuration;
  final bool textObscured;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.textObscured = false,
    this.obscureTimerDuration = const Duration(seconds: 3),
  });

  @override
  Widget build(BuildContext context) {
    final isObscure = useState<bool>(textObscured);

    void toggleObscure() {
      isObscure.value = false;
      Future.delayed(obscureTimerDuration, () {
        isObscure.value = true;
      });
    }

    return TextField(
      controller: controller,
      obscureText: isObscure.value,
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.w400,
          ),
      decoration: InputDecoration(
        hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w400,
              color: AppColors.greyTextColor,
            ),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(
            color: AppColors.secondaryColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(
            color: AppColors.errorColor,
          ),
        ),
        fillColor: Colors.white,
        hintText: hintText,
        suffixIcon: textObscured
            ? IconButton(
                icon: isObscure.value
                    ? SvgPicture.asset(
                        'eye-open'.svg,
                      )
                    : SvgPicture.asset(
                        'eye-closed'.svg,
                      ),
                onPressed: () => toggleObscure(),
              )
            : null,
      ),
    );
  }
}
