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
                child: false
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Placeholder(
                            fallbackHeight: 100,
                            fallbackWidth: 100,
                          ),
                          16.hi,
                          Text(
                            "What do you want to do today?",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          12.hi,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Tap",
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
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
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                      fontWeight: FontWeight.w400,
                                    ),
                              ),
                            ],
                          )
                        ],
                      )
                    : ListView(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        children: const [
                          ColoredStartContainer(),
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

class ColoredStartContainer extends StatelessWidget {
  const ColoredStartContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.h),
      decoration: BoxDecoration(
        color: AppColors.primaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: CustomPaint(
        painter: ColoredStartPainter(), // Custom painter for colored start
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Learn DSA (Dynamic Programming) and solve 2 problems',
              ),
              10.hi,
              Wrap(
                spacing: 8.w,
                runSpacing: 6.h,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: RichText(
                      text: TextSpan(
                        text: 'Deadline: ',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              fontSize: 12.sp,
                              color: AppColors.textColor,
                              fontWeight: FontWeight.w400,
                            ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '11:59 PM',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontSize: 12.sp,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: AppColors.greyTextColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Prioroty: ',
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: AppColors.textColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        SvgPicture.asset(
                          "p-low".svg,
                          height: 12.h,
                          width: 12.w,
                          color: AppColors.highPriorityColor,
                        ),
                        4.wi,
                        const Icon(
                          Icons.arrow_drop_down,
                          color: AppColors.textColor,
                          size: 12,
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: RichText(
                      text: TextSpan(
                        text: 'Time Allocated: ',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              fontSize: 12.sp,
                              color: AppColors.textColor,
                              fontWeight: FontWeight.w400,
                            ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '2 hours',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  fontSize: 12.sp,
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: AppColors.greyTextColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Status:',
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: AppColors.textColor,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Text(
                          ' In Progress',
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: AppColors.textColor,
                                    fontWeight: FontWeight.w400,
                                  ),
                        ),
                        4.wi,
                        const Icon(
                          Icons.arrow_drop_down,
                          color: AppColors.textColor,
                          size: 12,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ColoredStartPainter extends CustomPainter {
  final Color color;

  ColoredStartPainter({
    this.color = AppColors.primaryColor,
  });
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()..color = color; // Color of the start area

    double cornerRadius = 5.0.r; // Radius for rounded corners
    final Rect rect =
        Rect.fromLTRB(0, 0, 10.w, size.height); // Start area dimensions

    // Create a Path and add rounded corners to the top left and bottom left
    final Path path = Path()
      ..addRRect(
        RRect.fromRectAndCorners(
          rect,
          topLeft: Radius.circular(cornerRadius),
          bottomLeft: Radius.circular(cornerRadius),
        ),
      );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false; // The painting doesn't change
  }
}
