# react-native-widget-center

_Only supports iOS at the moment_

## Getting started

`$ yarn add react-native-widget-center`

### Add WidgetKit as optional linked framework

- Go to your app Build Phases
- Under Linked Binary with Libraries, add WidgetKit.framework
- Set WidgetKit.framework Status to Optional

## Usage

```javascript
import RNWidgetCenter from "react-native-widget-center";

// reload specific kind of widget (kind is specified in your WidgetConfiguration)
RNWidgetCenter.reloadTimelines("my.widget.type");

// reload all widget timelines
RNWidgetCenter.reloadAllTimelines();

// get installed widgets configuration
RNWidgetCenter.getCurrentConfigurations().then((result) => {
  // do something
});
```
