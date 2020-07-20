#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(RNWidgetCenter, NSObject)

	RCT_EXTERN_METHOD(reloadTimelines:(NSString *)kind)
	
	RCT_EXTERN_METHOD(reloadAllTimelines)

@end
