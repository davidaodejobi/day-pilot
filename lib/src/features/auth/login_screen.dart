import 'package:day_pilot/src/common_widgets/custom_elevated_button.dart';
import 'package:day_pilot/src/common_widgets/custom_textfield.dart';
import 'package:day_pilot/src/constants/app_colors.dart';
import 'package:day_pilot/src/features/auth/forgot_password.dart';
import 'package:day_pilot/src/features/auth/signup_screen.dart';
import 'package:day_pilot/src/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class LoginScreen extends HookConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  children: [
                    40.hi,
                    Text(
                      'Login',
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                fontWeight: FontWeight.w700,
                              ),
                    ),
                    16.hi,
                    Text(
                      'Get right back into your account.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                    ),
                    40.hi,
                    CustomTextField(
                      controller: emailController,
                      hintText: 'Email address',
                    ),
                    16.hi,
                    CustomTextField(
                      controller: passwordController,
                      hintText: 'Password',
                      textObscured: true,
                    ),
                    8.hi,
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ForgotPassword(),
                          ),
                        ),
                        overlayColor: MaterialStateProperty.all(
                          Colors.transparent,
                        ),
                        child: Text(
                          'Forgot password?',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ).padOnly(
                          top: 8.h,
                          bottom: 8.h,
                          left: 8.w,
                        ),
                      ),
                    ),
                    32.hi,
                    CustomElevatedButton(
                      text: 'Login',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUpScreen(),
                ),
              ),
              overlayColor: MaterialStateProperty.all(
                Colors.transparent,
              ),
              child: RichText(
                text: TextSpan(
                  text: 'Don\'t have an account? ',
                  style: Theme.of(context).textTheme.bodySmall,
                  children: [
                    TextSpan(
                      text: 'Sign up',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: AppColors.secondaryColor,
                          ),
                    ),
                  ],
                ),
              ).padAll(16),
            ),
          ],
        ),
      ),
    );
  }
}
