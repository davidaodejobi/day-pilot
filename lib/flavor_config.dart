enum Flavor {
  development,
  staging,
  production,
}

class FlavorConfig {
  static Flavor appFlavor = Flavor.production;
}
