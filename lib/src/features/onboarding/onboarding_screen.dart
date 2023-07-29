// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:day_pilot/src/constants/app_constants.dart';
import 'package:day_pilot/src/features/onboarding/onboard_button.dart';
import 'package:day_pilot/src/features/onboarding/onboard_card.dart';
import 'package:day_pilot/src/utils/extensions.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnbaordingScreen extends StatelessWidget {
  const OnbaordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: AppConstants.kScaffoldGradient,
        child: Column(
          children: [
            .05.sh.hi,
            Padding(
              padding: EdgeInsets.all(10.0.w),
              child: const FlipCard(
                autoFlipDuration: Duration(seconds: 3),
                fill: Fill.fillBack,
                direction: FlipDirection.HORIZONTAL,
                side: CardSide.FRONT,
                front: OnboardCard(
                  imagePath: '1',
                  isFront: true,
                ),
                back: OnboardCard(
                  imagePath: '2',
                  isFront: false,
                ),
              ),
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
