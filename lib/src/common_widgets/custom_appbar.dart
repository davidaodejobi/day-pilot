import 'package:day_pilot/src/constants/app_colors.dart';
import 'package:day_pilot/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//later refactor this to use the normal appbar
PreferredSize customAppBar(
  BuildContext context, {
  String title = "",
  Widget? content,
  WidgetRef? ref,
  VoidCallback? onActionTap,
  bool isBackButton = false,
  bool hasElevation = true,
}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(60.h),
    child: SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.scaffoldBackgroundColor,
          boxShadow: !hasElevation
              ? []
              : [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 0,
                    blurRadius: 5,
                    offset: const Offset(0, 5),
                  ),
                ],
        ),
        height: 58.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                isBackButton
                    ? InkWell(
                        onTap: () => Navigator.pop(context),
                        child: SvgPicture.asset(
                          "arrow-back".svg,
                        ).padSymmetric(
                          horizontal: 16.w,
                          vertical: 15.h,
                        ),
                      ).padOnly(
                        right: 16.w,
                      )
                    : const SizedBox(),
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ],
            ),
            if (onActionTap != null)
              const Row(
                children: [],
              ),
          ],
        ),
      ),
    ),
  );
}
