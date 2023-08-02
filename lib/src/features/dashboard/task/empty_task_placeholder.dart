import 'package:day_pilot/src/constants/app_colors.dart';
import 'package:day_pilot/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmptyTaskPlaceHolder extends StatelessWidget {
  const EmptyTaskPlaceHolder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Placeholder(
          fallbackHeight: 100,
          fallbackWidth: 100,
        ),
        16.hi,
        Text(
          "What do you want to do today?",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
        12.hi,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Tap",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
            ),
            4.wi,
            CircleAvatar(
              radius: 10.r,
              backgroundColor: AppColors.primaryColor,
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 16.r,
              ),
            ),
            4.wi,
            Text(
              "to add a new task",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
            ),
          ],
        )
      ],
    );
  }
}