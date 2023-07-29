import 'package:day_pilot/src/features/onboarding/onboard_button.dart';
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
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.w700,
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
            const OnbaordButton(
              onLoginPressed: null,
              onSignUpPressed: null,
            )
          ],
        ),
      ),
    );
  }
}
