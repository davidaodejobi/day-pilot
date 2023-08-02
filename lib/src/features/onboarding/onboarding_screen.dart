// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:day_pilot/src/features/auth/login_screen.dart';
import 'package:day_pilot/src/features/auth/signup_screen.dart';
import 'package:day_pilot/src/features/dashboard/dashboard.dart';
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
        // decoration: AppConstants.kScaffoldGradient,
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
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                  20.hi,
                  Text(
                    'Duis leo. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Fusce a quam. Nullam sagittis.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                ],
              ),
            ).padHorizontal(25),
            .07.sh.hi,
            OnbaordButton(
              onLoginPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              ),
              onSignUpPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUpScreen(),
                ),
              ),
            ),
            10.hi,
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DashBoard(),
                ),
              ),
              child: SizedBox(
                height: 40.h,
                width: .8.sw,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Skip',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
