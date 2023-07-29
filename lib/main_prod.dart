import 'package:day_pilot/flavor_config.dart';
import 'package:day_pilot/main.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.prod,
    env: "PROD",
    name: "DayPilot",
    values: FlavorValues(
      baseUrl: '',
    ),
  );

  mainCommon();
}
