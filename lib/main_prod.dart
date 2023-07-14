import 'package:day_pilot/flavor_config.dart';
import 'package:day_pilot/main.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.dev,
    env: "PROD",
    name: "DayPilot",
    values: FlavorValues(
      bundleID: '',
      appID: 'io.plan.day_pilot',
      baseUrl: '',
    ),
  );

  mainCommon();
}
