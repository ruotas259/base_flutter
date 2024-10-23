enum Flavor {
  local,
  dev,
  stg,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.local:
        return 'サンプル.local';
      case Flavor.dev:
        return 'サンプル.dev';
      case Flavor.stg:
        return 'サンプル.stg';
      case Flavor.prod:
        return 'サンプル';
      default:
        return 'title';
    }
  }

}
