//
//  RNWidgetCenter.swift
//  RNWidgetCenter
//
//  Created by Taylor Johnson on 7/20/20.
//
import Foundation
#if (arch(arm64) || arch(x86_64)) || targetEnvironment(macCatalyst)
import WidgetKit
#endif

@available(iOS 14, *)
@objc(RNWidgetCenter)
class RNWidgetCenter: NSObject {
	
	@objc static func requiresMainQueueSetup() -> Bool {
		return false
	}
	
	@objc(reloadTimelines:)
	func reloadTimelines(_ kind: String) {
		#if (arch(arm64) || arch(x86_64)) || targetEnvironment(macCatalyst)
		WidgetCenter.shared.reloadTimelines(ofKind: kind)
		#endif
	}
	
	@objc(reloadAllTimelines)
	func reloadAllTimelines() {
        #if (arch(arm64) || arch(x86_64)) || targetEnvironment(macCatalyst)
		WidgetCenter.shared.reloadAllTimelines()
		#endif
	}

    @objc(getCurrentConfigurations:reject:)
    func getCurrentConfigurations (_ resolve: @escaping RCTPromiseResolveBlock, reject: @escaping RCTPromiseRejectBlock) -> Void {
        #if (arch(arm64) || arch(x86_64)) || targetEnvironment(macCatalyst)
        WidgetCenter.shared.getCurrentConfigurations {result in
            switch result {
            case .success(let widgetInfo):
                // Serialize widgets config into something the bridge understands
                // https://reactnative.dev/docs/native-modules-ios#argument-types
                var res:[[String: String]] = []
                for widget in widgetInfo {
                    res.append(["kind": widget.kind, "family": widget.family.description])
                }
                resolve(res)
            case.failure(let error):
                reject("404", "Couldn't get current widgets configuration", error)
            }
        }
        #endif
    }
}
