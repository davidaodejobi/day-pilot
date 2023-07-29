import 'package:day_pilot/src/constants/app_colors.dart';
import 'package:day_pilot/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnbaordingScreen extends StatelessWidget {
  const OnbaordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: .4.sh,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.r),
                gradient: const LinearGradient(
                  begin: Alignment(0.72, -0.69),
                  end: Alignment(-0.72, 0.69),
                  colors: [Color(0xFF008FD5), Color(0xFF020066)],
                ),
              ),
            ).padSymmetric(
              horizontal: 10,
              vertical: 10,
            ),
            .1.sh.hi,
            SizedBox(
              child: Column(
                children: [
                  Text(
                    'Track your daily tasks',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.sp,
                        ),
                  ),
                  20.hi,
                  Text(
                    'Duis leo. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Fusce a quam. Nullam sagittis.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                        ),
                  ),
                ],
              ),
            ).padHorizontal(25),
            .1.sh.hi,
            Container(
              width: 311,
              height: 50,
              decoration: ShapeDecoration(
                color: const Color(0xFFFAFAFA),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignOutside,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.all(16),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 0.50, color: Colors.white),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x26A6A6A6),
                            blurRadius: 40,
                            offset: Offset(50, 10),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.textColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      padding: const EdgeInsets.all(16),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Register',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColors.textColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
