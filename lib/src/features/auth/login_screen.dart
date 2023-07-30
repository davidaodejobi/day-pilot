import 'package:day_pilot/src/common_widgets/custom_elevated_button.dart';
import 'package:day_pilot/src/common_widgets/custom_textfield.dart';
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
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              //calculate the height of the status bar
              // MediaQuery.of(context).padding.top.hi,
              SingleChildScrollView(
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
                    40.hi,
                    CustomElevatedButton(
                      text: 'Login',
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
