import 'package:day_pilot/flavor_config.dart';
import 'package:day_pilot/src/features/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppMaterialApp extends StatelessWidget {
  const AppMaterialApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: FlavorConfig.instance?.name ?? '',
          theme: ThemeData(
            scaffoldBackgroundColor: const Color(0xFFF7F9F9),
            primarySwatch: Colors.blue,
          ),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          // onGenerateTitle: (BuildContext context) =>
          //     AppLocalizations.of(context)!.appTitle,
          home: const OnbaordingScreen(),
        );
      },
    );
  }
}
