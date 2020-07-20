import { NativeModules, Platform } from 'react-native';

const { RNWidgetCenter } = NativeModules;

export default class WidgetCenter {
    static widgetCenterSupported = Platform.OS === 'ios' && Platform.Version >= 14;

    static reloadTimelines = kind => {
        if (this.widgetCenterSupported) {
            RNWidgetCenter.reloadTimelines(kind)
        }
    }

    static reloadAllTimelines = () => {
        if (this.widgetCenterSupported) {
            RNWidgetCenter.reloadAllTimelines()
        }
    }
}
