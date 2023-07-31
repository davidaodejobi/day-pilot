import 'package:day_pilot/src/common_widgets/custom_appbar.dart';
import 'package:day_pilot/src/constants/app_colors.dart';
import 'package:day_pilot/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DashBoard extends HookConsumerWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: customAppBar(
        context,
        isBackButton: false,
        hasElevation: true,
        leading: SvgPicture.asset(
          "menu".svg,
          // ignore: deprecated_member_use
          color: AppColors.textColor,
          fit: BoxFit.cover,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                child: Column(
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
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
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
                          style:
                              Theme.of(context).textTheme.titleMedium!.copyWith(
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 45.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 20.r,
                    backgroundColor: AppColors.scaffoldBackgroundColor,
                    child: const Icon(
                      Icons.menu,
                      color: AppColors.textColor,
                    ),
                  ),
                  CircleAvatar(
                    radius: 20.r,
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 25.r,
                    ),
                  ),
                  CircleAvatar(
                    radius: 20.r,
                    backgroundColor: AppColors.scaffoldBackgroundColor,
                    child: const Icon(
                      Icons.menu,
                      color: AppColors.textColor,
                    ),
                  ),
                ],
              ).padHorizontal(.07.sh),
            ),
          ],
        ),
      ),
    );
  }
}
