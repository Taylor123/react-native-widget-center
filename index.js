import { NativeModules, Platform } from 'react-native';

const { RNWidgetCenter } = NativeModules;

export default class WidgetCenter {
    static widgetCenterSupported = Platform.OS === 'ios' && Platform.Version >= 14;

    static reloadTimelines = kind => {
        if (WidgetCenter.widgetCenterSupported) {
            RNWidgetCenter.reloadTimelines(kind)
        }
    }

    static reloadAllTimelines = () => {
        if (WidgetCenter.widgetCenterSupported) {
            RNWidgetCenter.reloadAllTimelines()
        }
    }

    static getCurrentConfigurations = () => {
        if (WidgetCenter.widgetCenterSupported) {
            RNWidgetCenter.getCurrentConfigurations()
        }
    }
}
