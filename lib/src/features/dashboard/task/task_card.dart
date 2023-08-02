// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:day_pilot/src/constants/app_colors.dart';
import 'package:day_pilot/src/utils/enums.dart';
import 'package:day_pilot/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final Priority priority;
  final TaskStatus status;
  final DateTime duration;
  final DateTime timeLeft;
  final bool isCompleted;

  const TaskCard({
    Key? key,
    required this.title,
    required this.priority,
    required this.status,
    required this.duration,
    required this.timeLeft,
    required this.isCompleted,
  }) : super(key: key);

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
          padding: EdgeInsets.only(
            left: 16.w,
            right: 8.w,
            top: 12.h,
            bottom: 12.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      title,
                    ),
                  ),
                  5.wi,
                  SizedBox(
                    height: 20.h,
                    width: 20.w,
                    child: Checkbox(
                      value: isCompleted,
                      onChanged: (value) {},
                      activeColor: AppColors.primaryColor,
                    ),
                  )
                ],
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
                        text: 'Duration: ',
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
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: RichText(
                      text: TextSpan(
                        text: 'Time Left: ',
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
