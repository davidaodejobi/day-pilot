import 'package:day_pilot/src/constants/app_colors.dart';
import 'package:day_pilot/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

bottomSheet(
  BuildContext context, {
  required Widget child,
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) {
      return SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              6.hi,
              Container(
                height: 5.h,
                width: .12.sw,
                decoration: BoxDecoration(
                  color: AppColors.greyTextColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.r),
                  ),
                ),
              ),
              6.hi,
              child,
            ],
          ),
        ),
      );
    },
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    backgroundColor: Colors.white,
  );
}
