import 'package:day_pilot/flavor_config.dart';
import 'package:flutter/material.dart';

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
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      // supportedLocales: AppLocalizations.supportedLocales,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [],
        ),
      ),
    );
  }
}
