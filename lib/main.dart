import 'package:day_pilot/flavor_config.dart';
import 'package:day_pilot/src/app.dart';
import 'package:day_pilot/src/constants/app_colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void mainCommon() {
  WidgetsFlutterBinding.ensureInitialized();
  // turn off the # in the URLs on the web
  // usePathUrlStrategy();
  registerErrorHandlers();
  runApp(const DayPilot());
}

class DayPilot extends StatelessWidget {
  const DayPilot({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      // systemNavigationBarColor: Colors.blue, // navigation bar color
      statusBarColor:
          AppColors.greyTextColor.withOpacity(0.4), // status bar color
    ));
    return FlavorConfig.isProduction()
        ? const AppMaterialApp()
        : const AppMaterialApp();
  }
}

void registerErrorHandlers() {
  // * Show some error UI if any uncaught exception happens
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    debugPrint(details.toString());
  };
  // * Handle errors from the underlying platform/OS
  PlatformDispatcher.instance.onError = (Object error, StackTrace stack) {
    debugPrint(error.toString());
    return true;
  };
  // * Show some error UI when any widget in the app fails to build
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('An error occurred'),
      ),
      body: Center(child: Text(details.toString())),
    );
  };
}
