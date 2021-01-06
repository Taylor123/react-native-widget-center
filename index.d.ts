declare module "react-native-widget-center" {
  export static const widgetCenterSupported: boolean;

  interface Configuration {
      kind: string;

      family: string;
  }

  export static function reloadTimelines(kind: string): void;

  export static function reloadAllTimelines(): void;

  export static function getCurrentConfigurations(): Promise<Configuration>;
}
