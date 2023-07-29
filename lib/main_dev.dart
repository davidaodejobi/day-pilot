import 'package:day_pilot/flavor_config.dart';
import 'package:day_pilot/main.dart';

void main() {
  FlavorConfig(
    flavor: Flavor.dev,
    env: "DEV",
    name: "DayPilot [DEV]",
    values: FlavorValues(
      baseUrl: '',
    ),
  );

  mainCommon();
}
