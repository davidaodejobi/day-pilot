import 'flavor_config.dart';

AppConfig get appConfig {
  switch (FlavorConfig.appFlavor) {
    case Flavor.development:
      return AppConfig(
        appName: 'MyApp Dev',
        apiUrl: 'https://api.dev.example.com',
      );
    case Flavor.staging:
      return AppConfig(
        appName: 'MyApp Staging',
        apiUrl: 'https://api.staging.example.com',
      );
    case Flavor.production:
    default:
      return AppConfig(
        appName: 'MyApp',
        apiUrl: 'https://api.example.com',
      );
  }
}
