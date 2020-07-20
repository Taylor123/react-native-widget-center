//
//  RNWidgetCenter.swift
//  RNWidgetCenter
//
//  Created by Taylor Johnson on 7/20/20.
//  Copyright © 2020 Facebook. All rights reserved.
//

import WidgetKit

@available(iOS 14, *)
@objc(RNWidgetCenter)
class RNWidgetCenter: NSObject {
	
	@objc static func requiresMainQueueSetup() -> Bool {
		return false
	}
	
	@objc(reloadTimelines:)
	func reloadTimelines(_ kind: String) {
		WidgetCenter.shared.reloadTimelines(ofKind: kind)
	}
	
	@objc(reloadAllTimelines)
	func reloadAllTimelines() {
		WidgetCenter.shared.reloadAllTimelines()
	}
}
