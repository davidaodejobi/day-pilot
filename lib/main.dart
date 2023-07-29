import 'package:day_pilot/flavor_banner.dart';
import 'package:day_pilot/flavor_config.dart';
import 'package:flutter/material.dart';

void mainCommon() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const DayPilot());
}

class DayPilot extends StatelessWidget {
  const DayPilot({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FlavorConfig.isProduction()
        ? const AppMaterialApp()
        : Banner(
            location: BannerLocation.topEnd,
            message: FlavorConfig.instance!.env.toString(),
            color: Colors.amber,
            child: const AppMaterialApp(),
          );
  }
}

class AppMaterialApp extends StatelessWidget {
  const AppMaterialApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: FlavorConfig.instance!.name,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FlavorBanner(
      child: Scaffold(
        body: Center(
            child: Column(
          children: const [],
        )), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
